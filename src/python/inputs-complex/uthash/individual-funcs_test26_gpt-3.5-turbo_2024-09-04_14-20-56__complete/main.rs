use std::fs::File;
use std::io::{BufRead, BufReader};

struct El {
    bname: [char; 20],
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
}

fn main() {
    let mut name: Option<Box<El>> = None;
    let mut head: Option<Box<El>> = None;
    let mut linebuf = [0; 20];

    let file = File::open("test11.dat").expect("can't open");
    let reader = BufReader::new(file);

    for line in reader.lines() {
        let line = line.expect("error reading line");
        let mut el = Box::new(El {
            bname: line.chars().take(20).collect::<Vec<char>>().try_into().unwrap(),
            next: None,
            prev: None,
        });

        if let Some(ref mut head) = head {
            el.prev = Some(head.prev.clone());
            head.prev.as_mut().unwrap().next = Some(el.clone());
            head.prev = Some(el.clone());
            el.next = None;
        } else {
            head = Some(el.clone());
            head.as_mut().unwrap().prev = Some(el.clone());
            head.as_mut().unwrap().next = None;
        }
    }

    // Rest of the code translation goes here...
}
