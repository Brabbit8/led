#ifndef _LED_HW_H
#define _LED_HW_H
#include <linux/types.h>
int led_hw_init(void);
void led_hw_deinit(void);
void led_set_status(bool status);
bool led_get_status(void);
#endif
