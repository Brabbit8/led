ifneq ($(KERNELRELEASE),)
obj-m := myled.o
myled-y := myled_driver.o led_hw.o
else
KDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

.PHONY: all clean app
all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

app:
	$(CC) -Wall -Wextra -Werror -o app/led_test app/led_test.c
endif
