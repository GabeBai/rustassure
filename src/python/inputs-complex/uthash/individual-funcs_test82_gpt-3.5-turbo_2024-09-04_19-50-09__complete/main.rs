use std::alloc::{alloc, realloc, dealloc, Layout};
use std::ptr;

struct UT_icd {
    sz: usize,
    init: Option<fn(*mut u8)>,
    copy: Option<fn(*mut u8, *const u8)>,
    dtor: Option<fn(*mut u8)>,
}

struct UT_array {
    i: usize,
    n: usize,
    icd: UT_icd,
    d: *mut u8,
}

fn main() {
    let mut a: UT_array = UT_array {
        i: 0,
        n: 0,
        icd: UT_icd {
            sz: std::mem::size_of::<i32>(),
            init: None,
            copy: None,
            dtor: None,
        },
        d: std::ptr::null_mut(),
    };

    let mut b: UT_array = UT_array {
        i: 0,
        n: 0,
        icd: UT_icd {
            sz: std::mem::size_of::<i32>(),
            init: None,
            copy: None,
            dtor: None,
        },
        d: std::ptr::null_mut(),
    };

    for i in 0..10 {
        if a.i + 1 > a.n {
            let new_size = if a.n == 0 { 8 } else { 2 * a.n };
            let new_layout = Layout::array::<i32>(new_size).unwrap();
            a.d = unsafe { realloc(a.d, new_layout, new_size * a.icd.sz) };
            a.n = new_size;
        }

        let element_ptr = unsafe { a.d.add(a.i) as *mut i32 };
        unsafe {
            ptr::write(element_ptr, i);
        }

        a.i += 1;
    }

    for i in 0..a.i {
        let element_ptr = unsafe { a.d.add(i) as *mut i32 };
        println!("{} ", unsafe { *element_ptr });
    }
    println!("\nlen: {}\n", a.i);

    // Deallocation and cleanup for array a
    if a.i > 0 {
        for i in 0..a.i {
            let element_ptr = unsafe { a.d.add(i) as *mut i32 };
            // Perform any necessary cleanup for the element
            // (not implemented in this example)
        }
    }
    unsafe {
        dealloc(a.d, Layout::array::<i32>(a.n).unwrap());
    }
}
