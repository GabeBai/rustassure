use std::fmt;

struct El {
    id: char,
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
}

impl fmt::Display for El {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{}", self.id)
    }
}

fn main() {
    let mut els: Vec<El> = Vec::with_capacity(20);
    let mut head_a: Option<Box<El>> = None;
    let mut head_b: Option<Box<El>> = None;

    for i in 0..20 {
        els.push(El {
            id: ('a' as u8 + i as u8) as char,
            next: None,
            prev: None,
        });
    }

    println!("LL replace elem");

    for i in 0..4 {
        els[i].next = Some(Box::new(els[i + 1].clone()));
    }

    for e in &els {
        print!("{} ", e.id);
    }
    println!();

    els[4].next = els[0].next.take();
    if let Some(e) = &els[0].next {
        if head_a.as_ref() == Some(e) {
            head_a = Some(Box::new(els[4].clone()));
        } else {
            let mut tmp = head_a.as_mut();
            while let Some(node) = tmp {
                if node.next == Some(e.clone()) {
                    node.next = Some(Box::new(els[4].clone()));
                    break;
                }
                tmp = node.next.as_mut().map(|n| n.as_mut());
            }
        }
    }

    for e in &els {
        print!("{} ", e.id);
    }
    println!();

    // Continue with the rest of the code translation...
}
