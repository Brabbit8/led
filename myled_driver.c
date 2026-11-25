#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/uaccess.h>
#include <linux/slab.h>
#include <linux/gpio/consumer.h>
#include <linux/errno.h>

struct led
{
    dev_t devid;                  // 设备号
    struct cdev cdev;             // 字符设备
    struct class *class;          // 设备类
    struct device *device;        // 设备节点
    struct gpio_desc *gpio;       // GPIO 描述符
    int state;                    // LED 状态
};

static struct led *led_handle;    // LED 设备结构体指针

// 函数声明
static int myled_open(struct inode *inode, struct file *file);

static ssize_t myled_write(struct file *file,
                           const char __user *buf,
                           size_t count,
                           loff_t *ppos);

static int myled_release(struct inode *inode, struct file *file);

// 文件操作结构体
static const struct file_operations myled_fops = {
    .owner   = THIS_MODULE,
    .open    = myled_open,
    .write   = myled_write,
    .release = myled_release,
};

// 驱动初始化函数
static int __init myled_init(void)
{
    int ret;

    // 1. 动态分配并初始化设备结构体
    led_handle = kzalloc(sizeof(struct led), GFP_KERNEL);
    if (!led_handle) {
        return -ENOMEM;
    }

    // 2. 动态申请设备号
    ret = alloc_chrdev_region(&led_handle->devid, 0, 1, "myled");
    if (ret < 0) {
        goto err_alloc;
    }

    // 3. 初始化字符设备
    cdev_init(&led_handle->cdev, &myled_fops);

    // 4. 注册字符设备
    ret = cdev_add(&led_handle->cdev, led_handle->devid, 1);
    if (ret < 0) {
        goto err_cdev;
    }

    // 5. 创建设备类
    led_handle->class = class_create("myled_class");
    if (IS_ERR(led_handle->class)) {
        ret = PTR_ERR(led_handle->class);
        goto err_class;
    }

    // 6. 创建设备节点
    led_handle->device = device_create(
        led_handle->class,
        NULL,
        led_handle->devid,
        NULL,
        "myled"
    );

    if (IS_ERR(led_handle->device)) {
        ret = PTR_ERR(led_handle->device);
        goto err_device;
    }

    pr_info("myled: driver initialized\n");

    return 0;

// 错误处理：按照资源申请的逆序释放

err_device:
    class_destroy(led_handle->class);

err_class:
    cdev_del(&led_handle->cdev);

err_cdev:
    unregister_chrdev_region(led_handle->devid, 1);

err_alloc:
    kfree(led_handle);
    led_handle = NULL;

    return ret;
}

// open 函数
static int myled_open(struct inode *inode, struct file *file)
{
    // 保存设备结构体指针
    file->private_data = led_handle;

    return 0;
}

// write 函数
static ssize_t myled_write(struct file *file,
                           const char __user *buf,
                           size_t count,
                           loff_t *ppos)
{
    struct led *led = file->private_data;
    char kbuf[1];

    // 检查写入长度
    if (count == 0)
        return 0;

    // 检查 GPIO 是否已经初始化
    if (!led->gpio)
        return -ENODEV;

    // 从用户空间复制一个字节
    if (copy_from_user(kbuf, buf, 1))
        return -EFAULT;

    // 判断用户命令
    if (kbuf[0] == '1') {
        gpiod_set_value_cansleep(led->gpio, 1);
        led->state = 1;
    }
    else if (kbuf[0] == '0') {
        gpiod_set_value_cansleep(led->gpio, 0);
        led->state = 0;
    }
    else {
        return -EINVAL;
    }

    return 1;
}

// release 函数
static int myled_release(struct inode *inode, struct file *file)
{
    return 0;
}

// 驱动退出函数
static void __exit myled_exit(void)
{
    // 1. 删除设备节点
    device_destroy(led_handle->class, led_handle->devid);

    // 2. 销毁设备类
    class_destroy(led_handle->class);

    // 3. 删除字符设备
    cdev_del(&led_handle->cdev);

    // 4. 释放设备号
    unregister_chrdev_region(led_handle->devid, 1);

    // 5. 释放设备结构体
    kfree(led_handle);
    led_handle = NULL;

    pr_info("myled: driver removed\n");
}

module_init(myled_init);
module_exit(myled_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("myled");
MODULE_DESCRIPTION("My first LED character device driver");
