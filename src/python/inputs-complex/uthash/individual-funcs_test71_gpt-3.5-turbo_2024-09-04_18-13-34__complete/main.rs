use std::ptr;

struct El {
    id: char,
    next: Option<Box<El>>,
    prev: Option<*mut El>,
}

fn main() {
    let mut els: Vec<El> = vec![El { id: 'a', next: None, prev: None }; 26];
    let mut head_a: Option<Box<El>> = None;
    let mut head_b: Option<Box<El>> = None;

    for i in 0..25 {
        els[i].id = (b'a' + i) as char;
    }

    println!("LL prepend elem");

    for i in 0..4 {
        prepend_elem(&mut head_a, &mut els[i]);
    }

    print_list(&head_a);

    for i in 4..6 {
        prepend_elem(&mut head_a, &mut els[i]);
    }

    print_list(&head_a);

    for i in 6..8 {
        prepend_elem(&mut head_a, &mut els[i]);
    }

    print_list(&head_a);

    for i in 8..10 {
        prepend_elem(&mut head_a, &mut els[i]);
    }

    print_list(&head_a);

    for i in 20..22 {
        prepend_elem(&mut head_b, &mut els[i]);
    }

    print_list(&head_b);

    for i in 21..23 {
        prepend_elem(&mut head_b, &mut els[i]);
    }

    print_list(&head_b);
}

fn prepend_elem(head: &mut Option<Box<El>>, elem: &mut El) {
    let mut current = head;

    while let Some(ref mut node) = *current {
        current = &mut node.next;
    }

    *current = Some(Box::new(El {
        id: elem.id,
        next: None,
        prev: None,
    }));
}

fn print_list(head: &Option<Box<El>>) {
    let mut current = head;

    while let Some(ref node) = *current {
        print!("{} ", node.id);
        current = &node.next;
    }

    println!();
}
