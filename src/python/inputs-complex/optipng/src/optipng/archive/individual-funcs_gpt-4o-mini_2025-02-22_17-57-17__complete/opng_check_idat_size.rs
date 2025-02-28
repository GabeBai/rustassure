use std::panic;

const IDAT_SIZE_MAX: u32 = 0x7fffffff;

struct ExceptionContext {
    penv: *mut [u8; 16], // Adjust size as needed for jmp_buf
    caught: i32,
    v: ExceptionValue,
}

struct ExceptionValue {
    etmp: &'static str,
}

static mut THE_EXCEPTION_CONTEXT: [ExceptionContext; 1] = [ExceptionContext {
    penv: std::ptr::null_mut(),
    caught: 0,
    v: ExceptionValue { etmp: "" },
}];

fn opng_check_idat_size(size: u32) {
    unsafe {
        if size > IDAT_SIZE_MAX {
            THE_EXCEPTION_CONTEXT[0].v.etmp = "IDAT sizes larger than the maximum chunk size are currently unsupported";
            panic!(THE_EXCEPTION_CONTEXT[0].v.etmp);
        }
    }
}

fn main() {
    // Example usage
    let size: u32 = 0x80000000; // Example size that exceeds the limit
    opng_check_idat_size(size);
}
