#[derive(Clone)]
struct El {
    id: i32,
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
}

fn main() {
    let mut els: Vec<El> = vec![El { id: 0, next: None, prev: None }; 20];
    // Rest of your code goes here
}
