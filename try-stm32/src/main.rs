#![no_std]
#![no_main]

fn main() {
    loop {
        core::hint::spin_loop();
    }
}

#[no_mangle]
unsafe extern "C" fn reset_handler() {
    init_data(&_sidata, &mut _sdata, &mut _edata);
    zero_bss(&mut _sbss, &mut _ebss);

    main();
}

extern "C" {
    static mut _sidata: usize;
    static mut _sdata: usize;
    static mut _edata: usize;
    static mut _sbss: usize;
    static mut _ebss: usize;
}

unsafe fn init_data(mut sidata: *const usize, mut sdata: *mut usize, edata: *mut usize) {
    while sdata < edata {
        sdata.write_volatile(sidata.read());
        sdata = sdata.offset(1);
        sidata = sidata.offset(1);
    }
}

unsafe fn zero_bss(mut sbss: *mut usize, ebss: *mut usize) {
    while sbss < ebss {
        sbss.write_volatile(0);
        sbss = sbss.offset(1);
    }
}

#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
    loop {
        core::hint::spin_loop();
    }
}
