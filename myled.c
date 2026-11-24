
struct led
{
    device_t devid;//设备号
    struct gpio_pin *pin;//gpio引脚
    struct cdev cdev;//字符设备
    int state;//led状态
} led_handle;

static struct led *led_handle;//定义led设备结构体指针
//定义文件操作结构体
static struct file_operations myled_fops = {
    .owner = THIS_MODULE,
    .open = myled_open,
    .write = write,
};
//动态申请设备号
int ret;

ret = alloc_chrdev_region(&led_handle.devid, 0, 1, "myled");

if (ret < 0) {
    return ret;
}
//初始化字符设备
cdev_init(&led_handle.cdev, &myled_fops);
ret = cdev_add(&led_handle.cdev, led_handle.devid, 1);
if (ret < 0) {
    goto err_cdev;
}
//创建设备类
static struct class *led_class;
static struct device *led_device;

/* 创建设备类 */
led_class = class_create("myled");

if (IS_ERR(led_class)) {
    ret = PTR_ERR(led_class);
    goto err_class;
}

/* 创建设备节点 */
led_device = device_create(
    led_class,
    NULL,
    led_handle.devid,
    NULL,
    "myled"
);

if (IS_ERR(led_device)) {
    ret = PTR_ERR(led_device);
    goto err_device;
}
//open函数
static int myled_open(struct inode *inode, struct file *file)
{
    file->private_data = &led_handle;
    return 0;
}
//写操作函数
static int write(struct file *file, const char __user *buf, size_t count, loff_t *ppos)
{
    struct led *led = file->private_data;
    char kbuf[1];
    if (copy_from_user(kbuf, buf, 1))
        return -EFAULT;
    if (kbuf[0] == '1')
    {
        gpio_set_value(led->pin->gpio, 1);
        led->state = 1;
    }
    else if (kbuf[0] == '0')
    {
        gpio_set_value(led->pin->gpio, 0);
        led->state = 0;
    }
    else
    {
        return -EINVAL;
    }
    return count;
}

err_cdev()
{
    unregister_chrdev_region(led_handle.devid, 1);
    return ret;
}