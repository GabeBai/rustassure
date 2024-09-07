use std::fmt;

struct Element {
    id: i32,
    next: Option<Box<Element>>,
    prev: *mut Element,
}

impl Element {
    fn new(id: i32) -> Self {
        Element {
            id,
            next: None,
            prev: std::ptr::null_mut(),
        }
    }
}

struct List {
    head: Option<Box<Element>>,
}

impl List {
    fn new() -> Self {
        List { head: None }
    }

    fn push_front(&mut self, id: i32) {
        let mut new_element = Box::new(Element::new(id));
        if let Some(ref mut head) = self.head {
            new_element.prev = &mut **head;
            head.next = Some(new_element);
        }
        self.head = Some(new_element);
    }

    fn print(&self) {
        let mut current = self.head.as_ref().map(|e| &**e);
        while let Some(element) = current {
            print!("{} ", element.id as u8 as char);
            current = element.next.as_ref().map(|e| &**e);
        }
        println!();
    }
}

fn main() {
    let mut list_a = List::new();
    let mut list_b = List::new();

    for i in 0..10 {
        list_a.push_front('a' as i32 + i);
    }

    println!("DL macros");
    list_a.print();

    for i in 0..6 {
        list_b.push_front('a' as i32 + i + 3);
    }

    list_b.print();

    if let Some(mut head_b) = list_b.head.take() {
        if let Some(mut head_a) = list_a.head.take() {
            head_b.as_mut().prev = head_a.as_mut();
            head_a.as_mut().prev.as_mut().unwrap().next = Some(head_b);
            list_a.head = Some(head_a);
        }
    }

    list_a.print();

    list_a.head = None;
    if let Some(mut head_b) = list_b.head.take() {
        if let Some(mut head_a) = list_a.head.take() {
            head_b.as_mut().prev = head_a.as_mut();
            head_a.as_mut().prev.as_mut().unwrap().next = Some(head_b);
            list_a.head = Some(head_a);
        }
    }

    list_a.print();

    list_b.head = None;
    if let Some(mut head_b) = list_b.head.take() {
        if let Some(mut head_a) = list_a.head.take() {
            head_b.as_mut().prev = head_a.as_mut();
            head_a.as_mut().prev.as_mut().unwrap().next = Some(head_b);
            list_a.head = Some(head_a);
        }
    }

    list_a.print();

    list_a.head = None;
    list_b.head = None;

    for i in 0..2 {
        list_a.push_front('a' as i32 + i);
        list_b.push_front('a' as i32 + i + 1);
    }

    if let Some(mut head_b) = list_b.head.take() {
        if let Some(mut head_a) = list_a.head.take() {
            head_b.as_mut().prev = head_a.as_mut();
            head_a.as_mut().prev.as_mut().unwrap().next = Some(head_b);
            list_a.head = Some(head_a);
        }
    }

    list_a.print();
}
