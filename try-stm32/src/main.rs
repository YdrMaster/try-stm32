#![no_std]
#![no_main]

mod isr;

#[macro_use]
extern crate rcore_console;

use rcore_console::init_console;

#[inline(never)]
fn main() -> ! {
    init_console(&Console);
    println!("Hello, world!");

    loop {
        core::hint::spin_loop();
    }
}

extern "C" fn reset_handler() -> ! {
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

struct Console;

impl rcore_console::Console for Console {
    #[inline]
    fn put_char(&self, c: u8) {
        unsafe { (0x4000C000 as *mut u32).write_volatile(c as _) };
    }
}
