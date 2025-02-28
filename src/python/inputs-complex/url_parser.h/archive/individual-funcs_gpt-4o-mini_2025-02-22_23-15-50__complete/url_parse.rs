use std::ffi::CString;
use std::ptr;
use std::os::raw::c_char;

fn url_parse(url: *const c_char) -> *mut url_data_t {
    let data = unsafe { calloc(1, std::mem::size_of::<url_data_t>()) as *mut url_data_t };
    if data.is_null() {
        return ptr::null_mut();
    }
    
    let p = unsafe { strdup(url) };
    if p.is_null() {
        unsafe {
            let msg = CString::new(format!("ERROR url.c Line {}! p=<{:?}>\n", 190, p)).unwrap();
            fprintf(__stderrp, msg.as_ptr() as *const c_char);
        }
        goto_error(data);
    }

    // ... (rest of the function remains unchanged)

    return data;

error:
    url_free(data);
    return ptr::null_mut();
}

let msg = CString::new(format!("ERROR url.c Line {}! p=\xAB{:?}\xBB\n", 190, p)).unwrap();
