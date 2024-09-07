struct Element {
    id: i32,
    score: i32,
    next: Option<Box<Element>>,
    next2: Option<Box<Element>>,
}

fn main() {
    let alpha = Element { id: 1, score: 100, next: None, next2: None };
    let mut beta = Element { id: 2, score: 100, next: None, next2: None };
    let mut gamma = Element { id: 3, score: 100, next: None, next2: None };
    let mut delta = Element { id: 4, score: 100, next: None, next2: None };
    let mut stack1: Option<Box<Element>> = None;
    let mut stack2: Option<Box<Element>> = None;
    let mut dummy: Option<Box<Element>>;
    let mut size1: i32 = 0;
    let mut size2: usize = 0;

    // Rest of the code translation goes here
}
