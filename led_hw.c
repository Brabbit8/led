#include "led_hw.h"
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/uaccess.h>
#include <linux/gpio.h>

bool led_get_status(void) 
{

}
void led_hw_init(void)
{
    ioremapping_registers();
    enable_gpio_clock();
    gpio_func_init();
}
void led_hw_deinit(void) 
{
    pr_info("Deinit the LED Hardware\n");
    iounmap(IMX6U_CCM_CCGR1);
    iounmap(SW_MUX_GPIO1_IO03);
    iounmap(SW_PAD_GPIO1_IO03);
    iounmap(GPIO1_DR);
    iounmap(GPIO1_GDIR);
}
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

bool led_get_status(void) {
    u32 gpio_val = readl(GPIO1_DR);
    return (gpio_val & (1 << 3)) == 0;  // 低电平为亮
}
bool led_get_status(void)
{
    return false;
} 