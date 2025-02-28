use std::ptr;

fn decode_percent(s: *mut c_char) -> *mut c_char {
    let mut in_ptr = s;
    let mut out_ptr = s;

    unsafe {
        while *in_ptr != 0 {
            if *in_ptr == b'%' as c_char {
                in_ptr = in_ptr.offset(1);
                let high = unhex(*in_ptr);
                if high < 0 || *in_ptr == 0 {
                    return ptr::null_mut();
                }
                in_ptr = in_ptr.offset(1);
                let low = unhex(*in_ptr);
                if low < 0 || *in_ptr == 0 {
                    return ptr::null_mut();
                }
                *out_ptr = (high * 16 + low) as c_char;
                out_ptr = out_ptr.offset(1);
                in_ptr = in_ptr.offset(1);
            } else {
                *out_ptr = *in_ptr;
                out_ptr = out_ptr.offset(1);
                in_ptr = in_ptr.offset(1);
            }
        }
        *out_ptr = 0;
    }

    s
}