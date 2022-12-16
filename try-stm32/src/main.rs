#![no_std]
#![no_main]

mod isr;

#[inline(never)]
fn main() -> ! {
    const UART0DR: *mut u32 = 0x4000C000 as _;

    for c in b"Hello,world" {
        unsafe { UART0DR.write_volatile(*c as _) };
    }

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
