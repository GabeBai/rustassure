use std::ptr;

struct El {
    id: char,
    next: Option<Box<El>>,
    prev: *mut El,
}

impl El {
    fn new(id: char) -> Self {
        El {
            id,
            next: None,
            prev: ptr::null_mut(),
        }
    }
}

fn main() {
    let mut els: [El; 10] = Default::default();
    let mut head: Option<Box<El>> = None;

    for (i, el) in els.iter_mut().enumerate() {
        el.id = (b'a' + i as u8) as char;
    }

    println!("CDL macros");
    for el in els.iter_mut().take(4) {
        let new_el = Box::new(*el);
        if let Some(ref mut h) = head {
            new_el.prev = h.as_mut();
            new_el.next = Some(h.clone());
            h.prev = new_el.as_mut();
        }
        head = Some(new_el);
    }

    let mut e = head.as_ref().map(|h| h.as_ref());
    while let Some(el) = e {
        print!("{} ", el.id);
        e = el.next.as_ref().map(|n| n.as_ref());
    }
    println!();

    println!("advancing head pointer");
    if let Some(ref mut h) = head {
        head = h.next.take();
    }

    let mut e = head.as_ref().map(|h| h.as_ref());
    while let Some(el) = e {
        print!("{} ", el.id);
        e = el.next.as_ref().map(|n| n.as_ref());
    }
    println!();

    // Continue with the rest of the operations...

}
