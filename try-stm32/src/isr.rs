use crate::{nmi_handler, reset_handler};

#[link_section = ".isr_vector"]
#[used]
static ISR_VECTOR: (usize, [extern "C" fn() -> !; 2]) = (0x2000c000, [reset_handler, nmi_handler]);
