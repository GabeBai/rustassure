#[derive(Default)]
struct El {
    id: i32,
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
}

fn main() {
    let mut els: [El; 10] = Default::default();
    // Rest of your code here
}
