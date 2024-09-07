use std::ptr;

struct El {
    id: i32,
    score: i32,
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
    next_list2: Option<Box<El>>,
    prev_list2: Option<Box<El>>,
}

fn main() {
    let mut head: Option<Box<El>> = None;
    let mut head2: Option<Box<El>> = None;
    let mut els: [El; 15] = Default::default();

    for i in 0..15 {
        els[i].id = ('a' as i32 + i) as i32;
        els[i].score = i % 7;

        // Insert els[i] into head list
        let mut tmp = &mut head;
        while let Some(node) = tmp {
            if node.id >= els[i].id {
                break;
            }
            tmp = &mut node.next;
        }
        let new_node = Box::new(els[i]);
        new_node.next = tmp.take();
        *tmp = Some(new_node);

        // Insert els[i] into head2 list
        let mut tmp2 = &mut head2;
        while let Some(node) = tmp2 {
            if node.id >= els[i].id {
                break;
            }
            tmp2 = &mut node.next_list2;
        }
        let new_node2 = Box::new(els[i]);
        new_node2.next_list2 = tmp2.take();
        *tmp2 = Some(new_node2);
    }

    println!("LL_INSERT_INORDER");
    println!("list1: ");
    let mut e = &head;
    while let Some(node) = e {
        print!("{} ", node.id as u8 as char);
        e = &node.next;
    }
    println!();

    println!("list2: ");
    let mut e2 = &head2;
    while let Some(node) = e2 {
        print!("{} ", node.id as u8 as char);
        e2 = &node.next_list2;
    }
    println!();

    // Similar logic for DL_INSERT_INORDER and CDL_INSERT_INORDER

    // Print the lists
}
