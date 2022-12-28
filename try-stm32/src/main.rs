#![no_std]
#![no_main]

mod console;
mod isr;
mod task;

extern "C" {
    static mut _sidata: u8;
    static mut _data: u8;
    static mut _edata: u8;
    static mut _bss: u8;
    static mut _ebss: u8;
}

#[inline(never)]
fn main() -> ! {
    println!("Hello, world!");
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
