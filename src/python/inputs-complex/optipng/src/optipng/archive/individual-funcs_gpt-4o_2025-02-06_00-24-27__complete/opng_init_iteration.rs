#![allow(unaligned_references)]
use std::ptr;
use std::panic::{self, AssertUnwindSafe};

type OpngBitsetT = u32;

#[repr(C, packed)]struct OpngOptions {
    optim_level: i32,
}

static mut OPTIONS: OpngOptions = OpngOptions { optim_level: 0 };

#[no_mangle]
#[no_mangle]
fn opng_rangeset_string_to_bitset(_str: *const u8, _end_idx: *mut usize) -> OpngBitsetT {
    // Dummy implementation for translation purposes
    0
}

static mut THE_EXCEPTION_CONTEXT: [ExceptionContext; 1] = [ExceptionContext {
    penv: ptr::null_mut(),
    caught: 0,
    v: Volatile { etmp: ptr::null() },
}];

#[repr(C, packed)]struct ExceptionContext {
    penv: *mut jmp_buf,
    caught: i32,
    v: Volatile,
}

#[repr(C, packed)]struct Volatile {
    etmp: *const u8,
}

type jmp_buf = [i32; ((14 + 8 + 2) * 2)];

unsafe fn opng_init_iteration(
    cmdline_set: OpngBitsetT,
    mask_set: OpngBitsetT,
    preset: *const u8,
    output_set: *mut OpngBitsetT,
) {
    let mut preset_set: OpngBitsetT;
    *output_set = cmdline_set & mask_set;
    if *output_set == 0 && cmdline_set != 0 {
        loop {
            let _ = panic::catch_unwind(AssertUnwindSafe(|| {
                THE_EXCEPTION_CONTEXT[0].v.etmp = b"Iteration parameter(s) out of range\0".as_ptr();
                panic!();
            }));
        }
    }
    if *output_set == 0 || OPTIONS.optim_level >= 0 {
        preset_set = opng_rangeset_string_to_bitset(preset, ptr::null_mut());
        *output_set |= preset_set & mask_set;
    }
}
