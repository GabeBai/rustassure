use std::fs::File;
use std::io::{BufRead, BufReader};
use std::ptr;

struct El {
    bname: [char; 20],
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
}

fn main() {
    let mut name: Box<El>;
    let mut head: Option<Box<El>> = None;
    let file = File::open("test11.dat").unwrap();
    let reader = BufReader::new(file);

    for line in reader.lines() {
        let linebuf = line.unwrap();
        let mut el = El {
            bname: ['\0'; 20],
            next: None,
            prev: None,
        };
        el.bname[..linebuf.len()].copy_from_slice(&linebuf.as_bytes());
        let mut name = Box::new(el);
        if let Some(ref mut head_ref) = head {
            name.prev = Some(Box::clone(&head_ref.prev.as_ref().unwrap()));
            name.next = Some(Box::clone(head_ref));
            head_ref.prev = Some(name.clone());
            name.prev.as_mut().unwrap().next = Some(name.clone());
        } else {
            name.prev = Some(name.clone());
            name.next = Some(name.clone());
        }
        head = Some(name);
    }

    let mut tmp = head.as_ref();
    while let Some(node) = tmp {
        println!("{}", node.bname.iter().collect::<String>());
        if node.next == head {
            break;
        }
        tmp = node.next.as_ref();
    }
}
