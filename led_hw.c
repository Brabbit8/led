#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/fs.h>
#include "led_hw.h"
#include <linux/io.h>
static void __iomem* IMX6U_CCM_CCGR1 = NULL;
static void __iomem* SW_MUX_GPIO1_IO03 = NULL;
static void __iomem* SW_PAD_GPIO1_IO03 = NULL;
static void __iomem* GPIO1_DR = NULL;
static void __iomem* GPIO1_GDIR = NULL;
static void ioremapping_registers(void);  // 映射寄存器地址
static void enable_gpio_clock(void);     // 开启 GPIO 时钟
static void gpio_func_init(void);        // 配置 GPIO 引脚功能

// led硬件初始化函数
int led_hw_init(void)
{
    ioremapping_registers();// 映射寄存器地址
    enable_gpio_clock();// 开启 GPIO 时钟
    gpio_func_init();// 配置 GPIO 引脚功能
    return 1;
}
// led硬件反初始化函数
void led_hw_deinit(void) 
{
    pr_info("Deinit the LED Hardware\n");
    iounmap(IMX6U_CCM_CCGR1);
    iounmap(SW_MUX_GPIO1_IO03);
    iounmap(SW_PAD_GPIO1_IO03);
    iounmap(GPIO1_DR);
    iounmap(GPIO1_GDIR);
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
static void ioremapping_registers(void) {
#define IOREMAP(BASE_ADDR) ioremap(BASE_ADDR, 0x1000)
    IMX6U_CCM_CCGR1 = IOREMAP(kCCM_CCGR1_BASE);
    SW_MUX_GPIO1_IO03 = IOREMAP(kSW_MUX_GPIO1_IO03_BASE);
    SW_PAD_GPIO1_IO03 = IOREMAP(kSW_PAD_GPIO1_IO03_BASE);
    GPIO1_DR = IOREMAP(kGPIO1_DR_BASE);
    GPIO1_GDIR = IOREMAP(kGPIO1_GDIR_BASE);
#undef IOREMAP

    pr_info("IMX6U_CCM_CCGR1    = 0x%p (phys: 0x%x)\n", IMX6U_CCM_CCGR1, kCCM_CCGR1_BASE);
    pr_info("SW_MUX_GPIO1_IO03  = 0x%p (phys: 0x%x)\n", SW_MUX_GPIO1_IO03, kSW_MUX_GPIO1_IO03_BASE);
    pr_info("SW_PAD_GPIO1_IO03  = 0x%p (phys: 0x%x)\n", SW_PAD_GPIO1_IO03, kSW_PAD_GPIO1_IO03_BASE);
    pr_info("GPIO1_DR           = 0x%p (phys: 0x%x)\n", GPIO1_DR, kGPIO1_DR_BASE);
    pr_info("GPIO1_GDIR         = 0x%p (phys: 0x%x)\n", GPIO1_GDIR, kGPIO1_GDIR_BASE);
}
//开启gpio时钟
static void enable_gpio_clock(void) {
    u32 clock_settings = readl(IMX6U_CCM_CCGR1);
    pr_info("CCGR1 raw value: 0x%08x\n Bits: ", clock_settings);
    pr_info("\n");
    pr_bin_u32(clock_settings);

    clock_settings &= ~(0b11 << 26);  // 清除原来的值
    clock_settings |= 0b11 << 26;     // 设置为 11

    pr_info("CCGR1 new raw value: 0x%08x \nBits: ", clock_settings);
    pr_bin_u32(clock_settings);
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