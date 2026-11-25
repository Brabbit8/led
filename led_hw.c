#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/io.h>
#include <linux/errno.h>
#include "led_hw.h"

#define IMX6ULL_CCM_BASE             0x020C4000UL
#define IMX6ULL_IOMUXC_BASE          0x020E0000UL
#define IMX6ULL_GPIO1_BASE            0x0209C000UL
#define IMX6ULL_MAP_SIZE             0x1000
#define CCM_CCGR1_OFFSET              0x06CUL
#define SW_MUX_GPIO1_IO03_OFFSET      0x068UL
#define SW_PAD_GPIO1_IO03_OFFSET      0x2F4UL
#define GPIO1_DR_OFFSET               0x000UL
#define GPIO1_GDIR_OFFSET             0x004UL

static void __iomem *ccm_base;
static void __iomem *iomuxc_base;
static void __iomem *gpio1_base;

#define IMX6U_CCM_CCGR1 (ccm_base + CCM_CCGR1_OFFSET)
#define SW_MUX_GPIO1_IO03 (iomuxc_base + SW_MUX_GPIO1_IO03_OFFSET)
#define SW_PAD_GPIO1_IO03 (iomuxc_base + SW_PAD_GPIO1_IO03_OFFSET)
#define GPIO1_DR (gpio1_base + GPIO1_DR_OFFSET)
#define GPIO1_GDIR (gpio1_base + GPIO1_GDIR_OFFSET)
static int ioremapping_registers(void);   // 映射寄存器地址
static void enable_gpio_clock(void);     // 开启 GPIO 时钟
static void gpio_func_init(void);        // 配置 GPIO 引脚功能

// led硬件初始化函数
int led_hw_init(void)
{   //确认寄存器映射成功
    int ret = ioremapping_registers();

    if (ret)
        return ret;
    enable_gpio_clock();// 开启 GPIO 时钟
    gpio_func_init();// 配置 GPIO 引脚功能
    return 0;
}
// led硬件反初始化函数
void led_hw_deinit(void) 
{
    pr_info("Deinit the LED Hardware\n");
    if (ccm_base)
        iounmap(ccm_base);
    if (iomuxc_base)
        iounmap(iomuxc_base);
    if (gpio1_base)
        iounmap(gpio1_base);
    ccm_base = NULL;
    iomuxc_base = NULL;
    gpio1_base = NULL;
}
// 设置 LED 状态函数
void led_set_status(bool status) {
    const u32 led_bits = (1 << 3);
    u32 gpio_val = readl(GPIO1_DR);
    pr_info("led_set_status: status=%d, GPIO1_DR before=0x%08x\n", status, gpio_val);
    if (status) {
        gpio_val &= ~led_bits;  // 清零 -> 点亮
    } else {
        gpio_val |= led_bits;   // 置一 -> 熄灭
    }
    writel(gpio_val, GPIO1_DR);
    pr_info("led_set_status: GPIO1_DR after=0x%08x, bit3=%d\n", gpio_val, !status);
}
// 获取 LED 状态函数
bool led_get_status(void) {
    u32 gpio_val = readl(GPIO1_DR);
    return (gpio_val & (1 << 3)) == 0;  // 低电平为亮
}
//映射寄存器地址
static int ioremapping_registers(void) {
    ccm_base = ioremap(IMX6ULL_CCM_BASE, IMX6ULL_MAP_SIZE);
    if (!ccm_base)
        goto err;
    iomuxc_base = ioremap(IMX6ULL_IOMUXC_BASE, IMX6ULL_MAP_SIZE);
    if (!iomuxc_base)
        goto err;
    gpio1_base = ioremap(IMX6ULL_GPIO1_BASE, IMX6ULL_MAP_SIZE);
    if (!gpio1_base)
        goto err;

    return 0;

err:
    led_hw_deinit();
    return -ENOMEM;
}
//开启gpio时钟
static void enable_gpio_clock(void) {
    u32 clock_settings = readl(IMX6U_CCM_CCGR1);
    pr_info("CCGR1 raw value: 0x%08x\n Bits: ", clock_settings);
    pr_info("\n");
    clock_settings &= ~(0b11 << 26);  // 清除原来的值
    clock_settings |= 0b11 << 26;     // 设置为 11

    pr_info("CCGR1 new raw value: 0x%08x \nBits: ", clock_settings);
    pr_info("\n");
    writel(clock_settings, IMX6U_CCM_CCGR1);
}
// 配置 GPIO 引脚功能
static void gpio_func_init(void) {
    // 配置引脚复用为 ALT5 (GPIO 模式)
    const u32 kGPIO_MUX_SETTINGS = 0b101;
    pr_info("Setting SW_MUX_GPIO1_IO03 = 0x%x\n", kGPIO_MUX_SETTINGS);
    writel(kGPIO_MUX_SETTINGS, SW_MUX_GPIO1_IO03);

    // 配置电气特性
    const u32 kGPIO_PAD_SETTINGS = 0x10B0;
    writel(kGPIO_PAD_SETTINGS, SW_PAD_GPIO1_IO03);

    // 配置为输出模式
    const u32 kGPIO_DR_OUTPUT = (1 << 3);
    u32 gpio_direction = readl(GPIO1_GDIR);
    gpio_direction &= ~kGPIO_DR_OUTPUT;  // 清除 bit 3
    gpio_direction |= kGPIO_DR_OUTPUT;   // 设置 bit 3 为 1
    writel(gpio_direction, GPIO1_GDIR);
    pr_info("GPIO1_GDIR set to 0x%08x\n", gpio_direction);

    // 初始化为高电平（LED 熄灭）
    u32 gpio_val = readl(GPIO1_DR);
    gpio_val |= (1 << 3);
    writel(gpio_val, GPIO1_DR);
    pr_info("GPIO1_DR init set to 0x%08x (LED OFF)\n", gpio_val);
}
