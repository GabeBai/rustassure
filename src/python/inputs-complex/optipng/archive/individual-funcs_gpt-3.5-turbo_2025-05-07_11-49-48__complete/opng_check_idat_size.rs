use std::ptr;

#[repr(C)]
pub struct jmp_buf {
    __jmpbuf: [u64; 8],
    __mask_was_saved: i32,
    __saved_mask: [u64; 16],
}

extern "C" {
    fn longjmp(env: *const [jmp_buf; 1], val: i32) -> !;
}

struct ExceptionContext {
    penv: *const [jmp_buf; 1],
    caught: i32,
    v: ExceptionContextV,
}

struct ExceptionContextV {
    etmp: *const str,
}

static mut THE_EXCEPTION_CONTEXT: ExceptionContext = ExceptionContext {
    penv: ptr::null(),
    caught: 0,
    v: ExceptionContextV { etmp: "" },
};

const IDAT_SIZE_MAX: u32 = 0x7fffffff;

fn opng_check_idat_size(size: u32) {
    if size > IDAT_SIZE_MAX {
        unsafe {
            longjmp(&(*THE_EXCEPTION_CONTEXT.penv), 1);
        }
    }
}

fn main() {
    // Call opng_check_idat_size with a size
}
