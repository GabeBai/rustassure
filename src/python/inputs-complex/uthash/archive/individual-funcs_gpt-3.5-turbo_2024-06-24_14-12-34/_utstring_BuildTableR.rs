use std::os::raw::{c_char, c_long};

#[repr(C)]
pub struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

#[no_mangle]
#[allow(unused)]
pub extern "C" fn _utstring_BuildTableR(P_Needle: *const c_char, P_NeedleLen: usize, P_KMP_Table: *mut c_long) {
    let mut i: c_long;
    let mut j: c_long;
    unsafe {
        i = P_NeedleLen as c_long - 1;
        j = i + 1;
        *P_KMP_Table.offset(i as isize + 1) = j;
        while i >= 0 {
            while j < P_NeedleLen as c_long && *P_Needle.offset(i) != *P_Needle.offset(j) {
                j = *P_KMP_Table.offset(j + 1);
            }
            i -= 1;
            j -= 1;
            if i >= 0 {
                if *P_Needle.offset(i) == *P_Needle.offset(j) {
                    *P_KMP_Table.offset(i + 1) = *P_KMP_Table.offset(j + 1);
                } else {
                    *P_KMP_Table.offset(i + 1) = j;
                }
            } else {
                *P_KMP_Table.offset(i + 1) = j;
            }
        }
    }
}
