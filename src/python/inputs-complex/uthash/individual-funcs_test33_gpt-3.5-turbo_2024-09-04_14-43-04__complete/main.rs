use std::fs::File;
use std::io::{BufRead, BufReader};
use std::ptr;

struct El {
    bname: [char; 20],
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
}

fn main() {
    let mut name: Option<Box<El>> = None;
    let mut head: Option<Box<El>> = None;
    let file = File::open("test11.dat").expect("can't open");
    let reader = BufReader::new(file);

    for line in reader.lines() {
        let linebuf = line.expect("error reading line");
        let mut new_el = Box::new(El {
            bname: ['\0'; 20],
            next: None,
            prev: None,
        });
        let bytes = linebuf.as_bytes();
        for (i, &byte) in bytes.iter().enumerate() {
            new_el.bname[i] = byte as char;
        }
        new_el.next = head.take();
        head = Some(new_el);
    }

    let mut current = head.as_ref();
    while let Some(node) = current {
        println!("{}", node.bname.iter().collect::<String>());
        current = node.next.as_ref();
    }
}
