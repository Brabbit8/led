savedcmd_.module-common.o := /opt/arm-gnu-toolchain/bin/arm-none-linux-gnueabihf-gcc -Wp,-MMD,./..module-common.o.d -nostdinc -I/home/lai/imx-forge/third_party/linux_mainline/arch/arm/include -I/home/lai/imx-forge/out/linux/arch/arm/include/generated -I/home/lai/imx-forge/third_party/linux_mainline/include -I/home/lai/imx-forge/out/linux/include -I/home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi -I/home/lai/imx-forge/out/linux/arch/arm/include/generated/uapi -I/home/lai/imx-forge/third_party/linux_mainline/include/uapi -I/home/lai/imx-forge/out/linux/include/generated/uapi -include /home/lai/imx-forge/third_party/linux_mainline/include/linux/compiler-version.h -include /home/lai/imx-forge/third_party/linux_mainline/include/linux/kconfig.h -include /home/lai/imx-forge/third_party/linux_mainline/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -D__LINUX_ARM_ARCH__=6 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -std=gnu11 -fms-extensions -fno-dwarf2-cfi-asm -mno-fdpic -fno-ipa-sra -mtp=cp15 -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -march=armv6k -mtune=arm1136j-s -msoft-float -Uarm -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -fomit-frame-pointer -fzero-init-padding-bits=all -fno-stack-clash-protection -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=1280 -Wno-main -Wno-type-limits -Wno-dangling-pointer -Wvla-larger-than=1 -Wno-pointer-sign -Wcast-function-type -Wno-unterminated-string-initialization -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -DGCC_PLUGINS -mstack-protector-guard=tls -mstack-protector-guard-offset=1328  -DMODULE  -DKBUILD_BASENAME='".module_common"' -DKBUILD_MODNAME='".module_common.o"' -D__KBUILD_MODNAME=.module_common.o -c -o .module-common.o /home/lai/imx-forge/third_party/linux_mainline/scripts/module-common.c  

source_.module-common.o := /home/lai/imx-forge/third_party/linux_mainline/scripts/module-common.c

deps_.module-common.o := \
    $(wildcard include/config/UNWINDER_ORC) \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /home/lai/imx-forge/out/linux/include/generated/gcc-plugins.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/CC_HAS_ASSUME) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/FORTIFY_SOURCE) \
    $(wildcard include/config/UBSAN_BOUNDS) \
    $(wildcard include/config/CC_HAS_COUNTED_BY_PTR) \
    $(wildcard include/config/CC_HAS_MULTIDIMENSIONAL_NONSTRING) \
    $(wildcard include/config/CFI) \
    $(wildcard include/config/ARCH_USES_CFI_GENERIC_LLVM_PASS) \
    $(wildcard include/config/CC_HAS_BROKEN_COUNTED_BY_REF) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/compiler-context-analysis.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/compiler_attributes.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/compiler-gcc.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/CC_HAS_TYPEOF_UNQUAL) \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/asm/percpu_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/percpu_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/DYNAMIC_FTRACE) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/container_of.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/build_bug.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/asm/rwonce.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/rwonce.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/types.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/int-ll64.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/int-ll64.h \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitsperlong.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/bitsperlong.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/posix_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/stddef.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/stddef.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/posix_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/posix_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/const.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/const.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/const.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/CPU_32v6K) \
    $(wildcard include/config/THUMB2_KERNEL) \
    $(wildcard include/config/CPU_XSC3) \
    $(wildcard include/config/CPU_FA526) \
    $(wildcard include/config/ARM_HEAVY_MB) \
    $(wildcard include/config/ARM_DMA_MEM_BUFFERABLE) \
    $(wildcard include/config/CPU_SPECTRE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/barrier.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/stat.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/stat.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/stat.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/kernel.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/sysinfo.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/cache.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/cache.h \
    $(wildcard include/config/ARM_L1_CACHE_SHIFT) \
    $(wildcard include/config/AEABI) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/math.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/compiler.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/div64.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/bitops.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/bits.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/bits.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/bits.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/overflow.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/limits.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/limits.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/limits.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/typecheck.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/generic-non-atomic.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/bitops.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/irqflags_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/cleanup.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/err.h \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/uapi/asm/errno.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/errno.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/errno-base.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/args.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/CPU_V7M) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/ARM_THUMB) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/ptrace.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/hwcap.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/hwcap.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/bitfield.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/byteorder.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/byteorder/little_endian.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/byteorder/little_endian.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/swab.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/swab.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/swab.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/swab.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/byteorder/generic.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/irqflags.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/percpu.h \
    $(wildcard include/config/CPU_V6) \
    $(wildcard include/config/ARM_HAS_GROUP_RELOCS) \
    $(wildcard include/config/ARM_MODULE_PLTS) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/insn.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/threads.h \
    $(wildcard include/config/NR_CPUS) \
    $(wildcard include/config/BASE_SMALL) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/percpu-defs.h \
    $(wildcard include/config/ARCH_MODULE_NEEDS_WEAK_PER_CPU) \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/non-atomic.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/non-instrumented-non-atomic.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/builtin-__fls.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/builtin-__ffs.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/builtin-fls.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/builtin-ffs.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/ffz.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/fls64.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/sched.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/hweight.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/arch_hweight.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/const_hweight.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/lock.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/atomic.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
    $(wildcard include/config/ARM_LPAE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/prefetch.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/processor.h \
    $(wildcard include/config/HAVE_HW_BREAKPOINT) \
    $(wildcard include/config/BINFMT_ELF_FDPIC) \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/CPU_ENDIAN_BE8) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/hw_breakpoint.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/unified.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/vdso/processor.h \
    $(wildcard include/config/ARM_ERRATA_754327) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/CPU_SA1100) \
    $(wildcard include/config/CPU_SA110) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/cmpxchg-emu.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/cmpxchg-local.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/atomic/atomic-arch-fallback.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/atomic/atomic-long.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/atomic/atomic-instrumented.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/instrumented.h \
    $(wildcard include/config/DEBUG_ATOMIC) \
    $(wildcard include/config/DEBUG_ATOMIC_LARGEST_ALIGN) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/bug.h \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/stringify.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/linkage.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/CPU_ENDIAN_BE32) \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE_DETAILED) \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/once_lite.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/stdarg.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kern_levels.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/ratelimit_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/param.h \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/uapi/asm/param.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/param.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/spinlock_types_up.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/instrumented-lock.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/le.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/math64.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/time64.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/time64.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/time.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/time_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/time32.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/timex.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/timex.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/timex.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/time32.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/time.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/uidgid_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/highuid.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kmod.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/umh.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/gfp.h \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/PAGE_BLOCK_MAX_ORDER) \
    $(wildcard include/config/HAVE_GIGANTIC_FOLIOS) \
    $(wildcard include/config/SPARSEMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP_PREINIT) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/spinlock.h \
    $(wildcard include/config/PREEMPTION) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/asm/preempt.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/preempt.h \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/SH) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/restart_block.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/errno.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/errno.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/current.h \
    $(wildcard include/config/CURRENT_POINTER_IN_TPIDRURO) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/ARM_THUMBEE) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/VFPv3) \
    $(wildcard include/config/IWMMXT) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/page.h \
    $(wildcard include/config/CPU_COPY_V4WT) \
    $(wildcard include/config/CPU_COPY_V4WB) \
    $(wildcard include/config/CPU_COPY_FEROCEON) \
    $(wildcard include/config/CPU_COPY_FA) \
    $(wildcard include/config/CPU_XSCALE) \
    $(wildcard include/config/CPU_COPY_V6) \
    $(wildcard include/config/KUSER_HELPERS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/glue.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/pgtable-2level-types.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/memory.h \
    $(wildcard include/config/NEED_MACH_MEMORY_H) \
    $(wildcard include/config/PAGE_OFFSET) \
    $(wildcard include/config/DRAM_BASE) \
    $(wildcard include/config/DRAM_SIZE) \
    $(wildcard include/config/XIP_KERNEL) \
    $(wildcard include/config/HAVE_TCM) \
    $(wildcard include/config/ARM_PATCH_PHYS_VIRT) \
    $(wildcard include/config/PHYS_OFFSET) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sizes.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/kasan_def.h \
    $(wildcard include/config/KASAN_SHADOW_OFFSET) \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/getorder.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/memory_model.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/pfn.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/traps.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/bottom_half.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/instruction_pointer.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/bitmap.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/align.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/align.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/find.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/array_size.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/string.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/string.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/bitmap-str.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/cpumask_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/numa.h \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/nodemask.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/minmax.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/nodemask_types.h \
    $(wildcard include/config/NODES_SHIFT) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kstrtox.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sprintf.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/trace_printk.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/util_macros.h \
    $(wildcard include/config/FOO_SUSPEND) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/wordpart.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/random.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/ioctl.h \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/uapi/asm/ioctl.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/ioctl.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/ioctl.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/irqnr.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/irqnr.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/smp_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/asm/mmiowb.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/spinlock_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rwlock_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/spinlock_up.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rwlock.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/spinlock_api_up.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/list_nulls.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/wait.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/seqlock.h \
    $(wildcard include/config/CC_IS_GCC) \
    $(wildcard include/config/GCC_VERSION) \
    $(wildcard include/config/UBSAN_ALIGNMENT) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/mutex.h \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/osq_lock.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/debug_locks.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/seqlock_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/page-flags-layout.h \
  /home/lai/imx-forge/out/linux/include/generated/bounds.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/ARCH_HAS_ELF_CORE_EFLAGS) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/MM_ID) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/SCHED_CACHE) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/mm_types_task.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/auxvec.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/auxvec.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/auxvec.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/auxvec.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kref.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/refcount.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/refcount_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rbtree.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rbtree_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rcupdate.h \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/VIRT_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/CFS_BANDWIDTH) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/TRIVIAL_PREEMPT_RCU) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DETECT_HUNG_TASK_BLOCKER) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/ARCH_HAS_LAZY_MMU_MODE) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/KSTACK_ERASE) \
    $(wildcard include/config/KSTACK_ERASE_METRICS) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/RV_PER_TASK_MONITORS) \
    $(wildcard include/config/USER_EVENTS) \
    $(wildcard include/config/UNWIND_USER) \
    $(wildcard include/config/SCHED_PROXY_EXEC) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/sched.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/futex_types.h \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/COMPAT) \
    $(wildcard include/config/FUTEX_PRIVATE_HASH) \
    $(wildcard include/config/FUTEX_ROBUST_UNLOCK) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/pid_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sem_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/shm.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/shmparam.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kmsan_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/plist_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/hrtimer_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/timerqueue_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/timer_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/resource.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/resource.h \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/uapi/asm/resource.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/resource.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/resource.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/latencytop.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sched/prio.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sched/types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/signal.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/signal.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/signal.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/signal-defs.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/uapi/asm/sigcontext.h \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/uapi/asm/siginfo.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/asm-generic/siginfo.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/syscall_user_dispatch_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_ACT_MIRRED) \
    $(wildcard include/config/NET_EGRESS) \
    $(wildcard include/config/NF_DUP_NETDEV) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/posix-timers_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rseq_types.h \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/RSEQ_SLICE_EXTENSION) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/irq_work_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/workqueue_types.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kcsan.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rv.h \
    $(wildcard include/config/RV_LTL_MONITOR) \
    $(wildcard include/config/RV_HA_MONITOR) \
    $(wildcard include/config/RV_REACTORS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/tracepoint-defs.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/static_key.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/unwind_deferred_types.h \
  /home/lai/imx-forge/out/linux/arch/arm/include/generated/asm/kmap_size.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /home/lai/imx-forge/out/linux/include/generated/rq-offsets.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rcutiny.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/completion.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/swait.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/uprobes.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
    $(wildcard include/config/NO_HZ_COMMON) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/ktime.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/jiffies.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/jiffies.h \
  /home/lai/imx-forge/out/linux/include/generated/timeconst.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/vdso/ktime.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/timekeeping.h \
    $(wildcard include/config/POSIX_AUX_CLOCKS) \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/clocksource_ids.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/percpu_counter.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/percpu.h \
    $(wildcard include/config/KMALLOC_PARTITION_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/CPU_HAS_ASID) \
    $(wildcard include/config/VDSO) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/MIGRATION) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/local_lock.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/local_lock_internal.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/notifier.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rcu_segcblist.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/srcutiny.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/arch_topology.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/topology.h \
    $(wildcard include/config/ARM_CPU_TOPOLOGY) \
    $(wildcard include/config/BL_SWITCHER) \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/topology.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/sysctl.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/elf.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/user.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/elf.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/uapi/linux/elf-em.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sysfs.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/idr.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/radix-tree.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/sched/coredump.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/kobject_ns.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/rbtree_latch.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/error-injection.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/error-injection.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/dynamic_debug.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/module.h \
    $(wildcard include/config/ARM_UNWIND) \
  /home/lai/imx-forge/third_party/linux_mainline/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/unwind.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/build-salt.h \
    $(wildcard include/config/BUILD_SALT) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/elfnote.h \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/elfnote-lto.h \
    $(wildcard include/config/LTO) \
  /home/lai/imx-forge/third_party/linux_mainline/include/linux/vermagic.h \
    $(wildcard include/config/PREEMPT_BUILD) \
  /home/lai/imx-forge/out/linux/include/generated/utsrelease.h \
  /home/lai/imx-forge/third_party/linux_mainline/arch/arm/include/asm/vermagic.h \

.module-common.o: $(deps_.module-common.o)

$(deps_.module-common.o):
