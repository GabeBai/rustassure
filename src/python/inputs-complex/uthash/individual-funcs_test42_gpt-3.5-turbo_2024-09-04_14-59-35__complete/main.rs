use std::ptr;

struct El {
    id: i32,
    next: *mut El,
    prev: *mut El,
}

impl El {
    fn new(id: i32) -> Self {
        El {
            id,
            next: ptr::null_mut(),
            prev: ptr::null_mut(),
        }
    }
}

fn main() {
    let mut head: *mut El = ptr::null_mut();
    let mut els: [El; 10] = Default::default();

    for i in 0..10 {
        els[i].id = 'a' as i32 + i as i32;
    }

    println!("LL macros");
    for i in 0..3 {
        let tmp = &mut els[i];
        tmp.next = ptr::null_mut();
        let mut tmp_head = head;
        if !tmp_head.is_null() {
            while !(*tmp_head).next.is_null() {
                tmp_head = (*tmp_head).next;
            }
            (*tmp_head).next = tmp;
        } else {
            head = tmp;
        }
    }

    let mut e = head;
    while !e.is_null() {
        print!("{} ", (*e).id as u8 as char);
        e = (*e).next;
    }
    println!();

    // Rest of the code translation goes here...

    // Free memory if needed
    let mut e = head;
    while !e.is_null() {
        let next = (*e).next;
        // Free e if needed
        e = next;
    }
}
