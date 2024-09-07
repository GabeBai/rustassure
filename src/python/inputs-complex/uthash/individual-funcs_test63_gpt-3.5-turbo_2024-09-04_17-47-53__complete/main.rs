use std::fmt;

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
    let mut els: [El; 10] = Default::default();
    let mut head_a: Option<Box<El>> = None;
    let mut head_b: Option<Box<El>> = None;

    for i in 0..10 {
        els[i].id = 'a' as i32 + i;
    }

    println!("LL macros");

    for i in 0..3 {
        let el = Box::new(els[i]);
        el.next = head_a.take();
        head_a = Some(el);
    }

    for e in iterate_list(&head_a) {
        print!("{} ", e);
    }
    println!();

    for i in 3..6 {
        let el = Box::new(els[i]);
        el.next = head_b.take();
        head_b = Some(el);
    }

    for e in iterate_list(&head_b) {
        print!("{} ", e);
    }
    println!();

    head_a = append_list(&head_a, &head_b);

    for e in iterate_list(&head_a) {
        print!("{} ", e);
    }
    println!();

    head_a = None;

    head_a = append_list(&head_a, &head_b);

    for e in iterate_list(&head_a) {
        print!("{} ", e);
    }
    println!();

    head_b = None;

    head_a = Some(Box::new(els[0]));
    head_b = Some(Box::new(els[1]));

    head_a = append_list(&head_a, &head_b);

    for e in iterate_list(&head_a) {
        print!("{} ", e);
    }
    println!();
}

fn iterate_list(mut node: &Option<Box<El>>) -> Vec<char> {
    let mut result = Vec::new();
    while let Some(n) = node {
        result.push(n.id as u8 as char);
        node = &n.next;
    }
    result
}

fn append_list(mut list_a: &Option<Box<El>>, list_b: &Option<Box<El>>) -> Option<Box<El>> {
    if let Some(mut a) = list_a {
        while let Some(ref mut next) = a.next {
            a = next;
        }
        a.next = list_b.clone();
        list_a.clone()
    } else {
        list_b.clone()
    }
}
