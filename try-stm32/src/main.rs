#![no_std]
#![no_main]

mod isr;

extern crate rcore_console;

use rcore_console::{init_console, println};

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
    init_console(&Console);
    unsafe {
        println!("data   {:?}", &_data as *const _);
        println!("edata  {:?}", &_edata as *const _);
        println!("bss    {:?}", &_bss as *const _);
        println!("ebss   {:?}", &_ebss as *const _);
        println!("sidata {:?}", &_sidata as *const _);

        let data_len = &_edata as *const u8 as usize - &_data as *const u8 as usize;
        for b in core::slice::from_raw_parts(&_sidata as *const _ as *const u8, data_len) {
            println!("{:?} {} {}", b as *const _, b, *b as char);
        }
        println!("-------------------------");
        for b in core::slice::from_raw_parts(&_data as *const _ as *const u8, data_len) {
            println!("{:?} {} {}", b as *const _, b, *b as char);
        }
    }
    rcore_console::test_log();

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

struct Console;

impl rcore_console::Console for Console {
    #[inline]
    fn put_char(&self, c: u8) {
        unsafe { (0x4000C000 as *mut u32).write_volatile(c as _) };
    }
}
