use std::ptr;

struct Element {
    id: i32,
    next: Option<Box<Element>>,
    prev: *mut Element,
}

fn main() {
    let mut els = Vec::new();
    for i in 0..20 {
        els.push(Element { id: 'a' as i32 + i, next: None, prev: ptr::null_mut() });
    }

    println!("DL replace elem");

    let mut headA: *mut Element = ptr::null_mut();
    let mut headB: *mut Element = ptr::null_mut();

    for i in 0..4 {
        let el = &mut els[i];
        if headA.is_null() {
            headA = el;
            el.prev = el;
            el.next = None;
        } else {
            el.prev = headA;
            unsafe {
                (*headA).prev = el;
            }
            headA = el;
            el.next = None;
        }
    }

    // Rest of the code goes here...

    // Remember to properly handle memory management and safety in Rust
}
