fn main() {
    use std::{env, fs, path::PathBuf};

    let ld = &PathBuf::from(env::var_os("OUT_DIR").unwrap()).join("linker.ld");
    fs::write(ld, LINKER).unwrap();
    println!("cargo:rerun-if-changed=build.rs");
    println!("cargo:rustc-link-arg=-T{}", ld.display());
}

const LINKER: &[u8] = b"
ENTRY(reset_handler)

MEMORY {
    FLASH (rx)  : ORIGIN = 0x08000000, LENGTH = 128K
    RAM   (rwx) : ORIGIN = 0x20000000, LENGTH = 40K
}

SECTIONS {
    _sstack = ORIGIN(RAM) + LENGTH(RAM);
    _sidata = LOADADDR(.data);

    .isr_vector :
    {
        LONG(_sstack);
        LONG(reset_handler);
    } > FLASH

    .text : {
        *(.text .text.*)
    } > FLASH

    .rodata : {
        *(.rodata .rodata.*)
    } > FLASH

    .data : AT(ADDR(.rodata) + SIZEOF(.rodata))
    {
        _sdata = .;
        *(.data .data.*)
        _edata = .;
    } > RAM

    .bss (NOLOAD) :
    {
        _sbss = .;
        *(.bss)
        _ebss = .;
    } > RAM
}";
