#![no_std]
#![no_main]

mod isr;

use core::fmt::{self, Write};

/// 打印。
///
/// 给宏用的，用户不会直接调它。
#[doc(hidden)]
#[inline]
pub fn _print(args: fmt::Arguments) {
    Logger.write_fmt(args).unwrap();
}

/// 格式化打印。
#[macro_export]
macro_rules! print {
    ($($arg:tt)*) => {
        $crate::_print(core::format_args!($($arg)*));
    }
}

/// 格式化打印并换行。
#[macro_export]
macro_rules! println {
    () => ($crate::print!("\n"));
    ($($arg:tt)*) => {{
        $crate::_print(core::format_args!($($arg)*));
        $crate::println!();
    }}
}

/// 这个 Unit struct 是 `core::fmt` 要求的。
struct Logger;

/// 实现 [`Write`] trait，格式化的基础。
impl Write for Logger {
    #[inline]
    fn write_str(&mut self, s: &str) -> Result<(), fmt::Error> {
        for c in s.bytes() {
            unsafe { (0x4000C000 as *mut u32).write_volatile(c as _) };
        }
        Ok(())
    }
}

static mut HELLO: [u8; 13] = *b"Hello, world!";

extern "C" {
    static mut _sidata: u8;
    static mut _data: u8;
    static mut _edata: u8;
    static mut _bss: u8;
    static mut _ebss: u8;
}

#[inline(never)]
fn main() -> ! {
    loop {
        core::hint::spin_loop();
    }
}

extern "C" fn reset_handler() -> ! {
    unsafe {
        core::slice::from_raw_parts_mut(
            &mut _bss,
            (&mut _ebss as *mut u8).offset_from(&mut _bss) as _,
        )
        .fill(0);
        ((&mut _data) as *mut u8).copy_from_nonoverlapping(
            &_sidata as *const u8,
            (&_edata as *const u8).offset_from(&mut _data) as _,
        );
    }
    main()
}

extern "C" fn nmi_handler() -> ! {
    loop {
        core::hint::spin_loop();
    }
}

#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
    nmi_handler()
}
