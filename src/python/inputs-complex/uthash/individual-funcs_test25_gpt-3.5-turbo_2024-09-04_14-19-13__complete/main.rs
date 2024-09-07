#[derive(Default)]
struct El {
    id: i32,
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
}

impl El {
    fn new(id: i32) -> Self {
        El {
            id,
            next: None,
            prev: None,
        }
    }
}

fn main() {
    let mut els: [El; 10] = Default::default();
    // Initialize your els array with values
}
