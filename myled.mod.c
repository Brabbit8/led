#include <linux/module.h>
#include <linux/export-internal.h>
#include <linux/compiler.h>

MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};



static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0xe3ec2f2b, "alloc_chrdev_region" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x35e89aa8, "class_destroy" },
	{ 0xedc03953, "iounmap" },
	{ 0x037a0cba, "kfree" },
	{ 0x822137e2, "arm_heavy_mb" },
	{ 0x92997ed8, "_printk" },
	{ 0xf0fdf6cb, "__stack_chk_fail" },
	{ 0xfdf558b8, "cdev_add" },
	{ 0x498b7adb, "device_create" },
	{ 0xb6a40a3f, "class_create" },
	{ 0xe97c4103, "ioremap" },
	{ 0x5f754e5a, "memset" },
	{ 0x6091b333, "unregister_chrdev_region" },
	{ 0xae353d77, "arm_copy_from_user" },
	{ 0x1a9a61fb, "device_destroy" },
	{ 0x2031099a, "__kmalloc_cache_noprof" },
	{ 0x528c709d, "simple_read_from_buffer" },
	{ 0x6205148f, "cdev_init" },
	{ 0x0f847840, "kmalloc_caches" },
	{ 0x03e872d5, "cdev_del" },
	{ 0xdcc6cf50, "module_layout" },
};

MODULE_INFO(depends, "");


MODULE_INFO(srcversion, "8DE9B44D053BBEF262656D5");
