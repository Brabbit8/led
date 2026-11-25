#ifndef _LED_HW_H
#define _LED_HW_H
#include <linux/gpio.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/uaccess.h>
int led_hw_init(void);
void led_hw_on(void);
void led_hw_off(void);
void led_hw_exit(void);

#endif