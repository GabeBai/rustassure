use std::os::raw::{c_char, c_long};
use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

struct UTString {
    d: *mut c_char,
    n: usize,
    i: usize,
}

#[no_mangle]
pub unsafe extern "C" fn utstring_find(
    s: *mut UTString,
    P_StartPosition: c_long,
    P_Needle: *const c_char,
    P_NeedleLen: usize,
) -> c_long {
    let mut V_StartPosition: usize;
    let mut V_HaystackLen: usize;
    let mut V_KMP_Table: *mut c_long;
    let mut V_FindPosition: c_long = -1;

    let s = &*s;

    if P_StartPosition < 0 {
        V_StartPosition = s.i + P_StartPosition as usize;
    } else {
        V_StartPosition = P_StartPosition as usize;
    }

    V_HaystackLen = s.i - V_StartPosition;

    if V_HaystackLen >= P_NeedleLen && P_NeedleLen > 0 {
        V_KMP_Table = alloc(Layout::array::<c_long>(P_NeedleLen + 1).unwrap()) as *mut c_long;
        if !V_KMP_Table.is_null() {
            _utstring_BuildTable(P_Needle, P_NeedleLen, V_KMP_Table);
            V_FindPosition = _utstring_find(s.d.add(V_StartPosition),
                                            V_HaystackLen,
                                            P_Needle,
                                            P_NeedleLen,
                                            V_KMP_Table);
            if V_FindPosition >= 0 {
                V_FindPosition += V_StartPosition as c_long;
            }
            dealloc(V_KMP_Table as *mut u8, Layout::array::<c_long>(P_NeedleLen + 1).unwrap());
        }
    }

    V_FindPosition
}

unsafe fn _utstring_BuildTable(P_Needle: *const c_char, P_NeedleLen: usize, V_KMP_Table: *mut c_long) {
    // Implementation of _utstring_BuildTable
}

unsafe fn _utstring_find(
    s: *const c_char,
    V_HaystackLen: usize,
    P_Needle: *const c_char,
    P_NeedleLen: usize,
    V_KMP_Table: *const c_long,
) -> c_long {
    // Implementation of _utstring_find
}
