static mut CURRENT_TASK: usize = 1;
static mut CURRENT_TASK_SP: usize = 1;
static mut NEXT_TASK_SP: usize = 1;
static mut TASK1_CURRENT_SP: [usize; 16] = [0; 16];
static mut TASK2_CURRENT_SP: [usize; 16] = [0; 16];
