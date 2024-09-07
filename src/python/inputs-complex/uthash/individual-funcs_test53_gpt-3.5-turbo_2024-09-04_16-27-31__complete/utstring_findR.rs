use std::os::raw::{c_char, c_long};
use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

struct UTString {
    d: *mut c_char,
    n: usize,
    i: usize,
}

#[no_mangle]
pub unsafe extern "C" fn utstring_findR(
    s: *mut UTString,
    P_StartPosition: c_long,
    P_Needle: *const c_char,
    P_NeedleLen: usize,
) -> c_long {
    let mut V_StartPosition: c_long;
    let mut V_HaystackLen: c_long;
    let mut V_KMP_Table: *mut c_long;
    let mut V_FindPosition: c_long = -1;

    if P_StartPosition < 0 {
        V_StartPosition = (*s).i as c_long + P_StartPosition;
    } else {
        V_StartPosition = P_StartPosition;
    }

    V_HaystackLen = V_StartPosition + 1;
    if V_HaystackLen >= P_NeedleLen as c_long && P_NeedleLen > 0 {
        V_KMP_Table = alloc(Layout::array::<c_long>(P_NeedleLen + 1).unwrap()) as *mut c_long;
        if !V_KMP_Table.is_null() {
            _utstring_BuildTableR(P_Needle, P_NeedleLen, V_KMP_Table);
            V_FindPosition = _utstring_findR((*s).d,
                                             V_HaystackLen as usize,
                                             P_Needle,
                                             P_NeedleLen,
                                             V_KMP_Table);
            dealloc(V_KMP_Table as *mut u8, Layout::array::<c_long>(P_NeedleLen + 1).unwrap());
        }
    }

    V_FindPosition
}

unsafe fn _utstring_BuildTableR(P_Needle: *const c_char, P_NeedleLen: usize, V_KMP_Table: *mut c_long) {
    // Implementation of _utstring_BuildTableR function
}

unsafe fn _utstring_findR(
    s: *mut c_char,
    V_HaystackLen: usize,
    P_Needle: *const c_char,
    P_NeedleLen: usize,
    V_KMP_Table: *mut c_long,
) -> c_long {
    // Implementation of _utstring_findR function
    -1
}
