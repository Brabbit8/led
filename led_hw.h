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
void led_hw_init(void);
void led_hw_deinit(void);
void led_set_status(bool status);
bool led_get_status(void);
#endif