use std::ffi::c_uint;

#[repr(C)]
struct OpngEngineSummary {
    file_count: c_uint,
    err_count: c_uint,
    fix_count: c_uint,
    snip_count: c_uint,
}

#[repr(C)]
struct OpngOptions {
    verbose: i32,
}

static mut ENGINE: OpngEngineSummary = OpngEngineSummary {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
};

static mut OPTIONS: OpngOptions = OpngOptions { verbose: 0 };

static mut USR_PRINTF: Option<unsafe extern "C" fn(*const i8, ...)> = None;

#[no_mangle]
pub extern "C" fn opng_finalize() -> i32 {
    unsafe {
        if OPTIONS.verbose != 0 || ENGINE.snip_count > 0 || ENGINE.err_count > 0 {
            if let Some(printf) = USR_PRINTF {
                printf(b"** Status report\n\0".as_ptr() as *const i8);
                printf(b"%u file(s) have been processed.\n\0".as_ptr() as *const i8, ENGINE.file_count);
                if ENGINE.snip_count > 0 {
                    printf(b"%u multi-image file(s) have been snipped.\n\0".as_ptr() as *const i8, ENGINE.snip_count);
                }
                if ENGINE.err_count > 0 {
                    printf(b"%u error(s) have been encountered.\n\0".as_ptr() as *const i8, ENGINE.err_count);
                    if ENGINE.fix_count > 0 {
                        printf(b"%u erroneous file(s) have been fixed.\n\0".as_ptr() as *const i8, ENGINE.fix_count);
                    }
                }
            }
        }
    }
    0
}