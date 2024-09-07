use std::fs::File;
use std::io::{BufRead, BufReader};
use std::ptr;

struct El {
    bname: [u8; 20],
    next: Option<Box<El>>,
    prev: *mut El,
}

impl El {
    fn new() -> Self {
        Self {
            bname: [0; 20],
            next: None,
            prev: ptr::null_mut(),
        }
    }
}

fn main() {
    let mut head: Option<Box<El>> = None;
    let file = File::open("test11.dat").expect("can't open");
    let reader = BufReader::new(file);

    for line in reader.lines() {
        let mut name = Box::new(El::new());
        let line = line.expect("error reading line");
        name.bname.copy_from_slice(line.trim_end().as_bytes());

        if let Some(mut head_ref) = head.as_mut() {
            name.prev = head_ref.prev.as_mut().map_or_else(|| head_ref.as_mut(), |prev| prev);
            name.next = Some(head_ref.clone());
            head_ref.prev = name.as_mut();
            name.prev.as_mut().unwrap().next = Some(name);
        } else {
            name.prev = name.as_mut();
            name.next = Some(name.clone());
            head = Some(name);
        }
    }

    let mut current = head.as_ref().map_or_else(|| None, |head_ref| Some(head_ref.as_ref()));
    let mut sorted_head: Option<Box<El>> = None;

    while let Some(mut p) = current {
        current = if let Some(mut q) = p.next.take() {
            let mut in_size = 1;
            let mut old_head = p;
            let mut tail: *mut El = ptr::null_mut();
            let mut n_merges = 0;

            loop {
                let mut p_size = 0;
                let mut q_size = in_size;
                let mut i = 0;
                let mut looping = true;

                while looping {
                    let mut e = if p_size == 0 || (q_size > 0 && !q.is_null() && namecmp(p, q) <= 0) {
                        let tmp = p.next.take();
                        p_size -= 1;
                        if p == old_head {
                            p = ptr::null_mut();
                        } else {
                            p = tmp.unwrap();
                        }
                        p
                    } else {
                        let tmp = q.next.take();
                        q_size -= 1;
                        if q == old_head {
                            q = ptr::null_mut();
                        } else {
                            q = tmp.unwrap();
                        }
                        q
                    };

                    if !tail.is_null() {
                        unsafe {
                            (*tail).next = Some(e);
                        }
                    } else {
                        sorted_head = Some(e);
                    }

                    unsafe {
                        (*e).prev = tail;
                    }

                    tail = e;
                    n_merges += 1;

                    if p_size == 0 && (q_size == 0 || q.is_null()) {
                        looping = false;
                    }
                }

                p = q;
                n_merges += 1;

                if n_merges <= 1 {
                    break;
                }

                in_size *= 2;
            }

            Some(p)
        } else {
            None
        };
    }

    let mut tmp = sorted_head.as_ref().map_or_else(|| None, |head_ref| Some(head_ref.as_ref()));

    while let Some(p) = tmp {
        println!("{}", String::from_utf8_lossy(&p.bname));
        tmp = if p.next.as_ref().map_or_else(|| false, |_| true) {
            Some(p.next.as_ref().unwrap())
        } else {
            None
        };
    }
}

fn namecmp(p: *const El, q: *const El) -> i32 {
    let p = unsafe { &*p };
    let q = unsafe { &*q };
    // Implement your comparison logic here
    // For example, compare p.bname and q.bname
    0
}
