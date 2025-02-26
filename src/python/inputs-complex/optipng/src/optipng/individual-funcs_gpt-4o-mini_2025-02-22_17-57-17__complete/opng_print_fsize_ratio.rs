use std::ffi::{CStr, CString};
use std::os::raw::c_char;
use std::ptr;

#[repr(C)]
struct OpngUlRatio {
    num: u64,
    denom: u64,
}

extern "C" {
    fn opng_ulratio_to_factor_string(buffer: *mut c_char, buffer_size: usize, ratio: *const OpngUlRatio) -> i32;
}

static mut usr_printf: Option<extern "C" fn(fmt: *const c_char, ...) -> ()> = None;

fn opng_print_fsize_ratio(num: u64, denom: u64) {
    let mut buffer: [c_char; 32] = [0; 32];
    let ratio = OpngUlRatio { num, denom };
    
    unsafe {
        let result = opng_ulratio_to_factor_string(buffer.as_mut_ptr(), buffer.len(), &ratio);
        let fmt = CString::new("%s%s").unwrap();
        let message = if result > 0 {
            CStr::from_ptr(buffer.as_ptr()).to_string_lossy().into_owned()
        } else {
            CStr::from_ptr(buffer.as_ptr()).to_string_lossy().into_owned() + "..."
        };
        
        if let Some(printf) = usr_printf {
            printf(fmt.as_ptr(), message.as_ptr());
        }
    }
}
