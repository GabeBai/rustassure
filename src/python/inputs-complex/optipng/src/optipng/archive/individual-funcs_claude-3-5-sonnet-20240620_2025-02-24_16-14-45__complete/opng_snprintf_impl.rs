use std::ffi::VaList;
use std::os::raw::c_char;

#[no_mangle]
pub unsafe extern "C" fn opng_snprintf_impl(buffer: *mut c_char, buffer_size: usize, format: *const c_char, mut args: ...) -> i32 {
    let mut arg_ptr = args.as_va_list();
    let result = libc::vsnprintf(buffer, buffer_size, format, arg_ptr);
    
    if result < 0 || result as usize >= buffer_size {
        if buffer_size > 0 {
            *buffer.add(buffer_size - 1) = 0;
        }
        return -1;
    }
    
    result
}