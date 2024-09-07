use std::os::raw::{c_char, c_long};
use std::mem;

struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

#[no_mangle]
pub unsafe extern "C" fn utstring_find(
    s: *mut UT_string,
    P_StartPosition: c_long,
    P_Needle: *const c_char,
    P_NeedleLen: usize,
) -> c_long {
    let mut V_StartPosition: usize;
    let mut V_HaystackLen: usize;
    let mut V_KMP_Table: *mut c_long;
    let mut V_FindPosition: c_long = -1;

    if P_StartPosition < 0 {
        V_StartPosition = (*s).i + P_StartPosition as usize;
    } else {
        V_StartPosition = P_StartPosition as usize;
    }

    V_HaystackLen = (*s).i - V_StartPosition;

    if V_HaystackLen >= P_NeedleLen as usize && P_NeedleLen > 0 {
        V_KMP_Table = libc::malloc(mem::size_of::<c_long>() * (P_NeedleLen + 1)) as *mut c_long;
        if !V_KMP_Table.is_null() {
            _utstring_BuildTable(P_Needle, P_NeedleLen, V_KMP_Table);
            V_FindPosition = _utstring_find((*s).d.offset(V_StartPosition as isize),
                                            V_HaystackLen as c_long,
                                            P_Needle,
                                            P_NeedleLen,
                                            V_KMP_Table);
            if V_FindPosition >= 0 {
                V_FindPosition += V_StartPosition as c_long;
            }
            libc::free(V_KMP_Table as *mut std::ffi::c_void);
        }
    }

    V_FindPosition
}

unsafe fn _utstring_BuildTable(P_Needle: *const c_char, P_NeedleLen: usize, V_KMP_Table: *mut c_long) {
    // Implementation of _utstring_BuildTable
}

unsafe fn _utstring_find(
    s: *const c_char,
    V_HaystackLen: c_long,
    P_Needle: *const c_char,
    P_NeedleLen: usize,
    V_KMP_Table: *const c_long,
) -> c_long {
    // Implementation of _utstring_find
}
