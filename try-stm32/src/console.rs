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
        $crate::console::_print(core::format_args!($($arg)*));
    }
}

/// 格式化打印并换行。
#[macro_export]
macro_rules! println {
    () => ($crate::print!("\n"));
    ($($arg:tt)*) => {{
        $crate::console::_print(core::format_args!($($arg)*));
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
