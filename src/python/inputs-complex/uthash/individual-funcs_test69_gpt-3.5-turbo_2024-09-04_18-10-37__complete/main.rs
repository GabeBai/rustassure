use std::fmt;

#[derive(Clone)]
struct El {
    id: i32,
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
}

impl fmt::Display for El {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{}", self.id as u8 as char)
    }
}

fn main() {
    let mut els: Vec<El> = vec![El { id: 97, next: None, prev: None }; 26];
    let mut head_a: Option<Box<El>> = None;
    let mut head_b: Option<Box<El>> = None;

    for i in 0..25 {
        els[i].id = (i as i32 + 97) as i32;
    }

    println!("DL prepend elem");
    for i in 0..4 {
        els[i].next = Some(Box::new(els[i + 1].clone()));
        els[i + 1].prev = Some(Box::new(els[i].clone()));
    }

    for e in &els[0..4] {
        print!("{} ", e);
    }
    println!();

    // Continue with the rest of your logic...
}
