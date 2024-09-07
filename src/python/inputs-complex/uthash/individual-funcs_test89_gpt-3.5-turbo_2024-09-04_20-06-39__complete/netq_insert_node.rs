use std::ptr;

struct NetqT {
    next: Option<Box<NetqT>>,
    t: i32,
}

fn netq_insert_node(queue: &mut Option<Box<NetqT>>, node: Box<NetqT>) -> i32 {
    let mut p = queue.as_mut();
    while let Some(current_p) = p {
        if current_p.t <= node.t {
            p = &mut current_p.next;
        } else {
            break;
        }
    }

    if let Some(p) = p {
        node.next = p.next.take();
        if *queue == p {
            *queue = Some(node);
        } else {
            let mut tmp = queue.as_mut().unwrap();
            while let Some(next) = tmp.next.as_ref() {
                if next as *const _ == p as *const _ {
                    tmp.next = Some(node);
                    break;
                }
            }
        }
    } else {
        node.next = None;
        if let Some(mut tmp) = queue.as_mut() {
            while let Some(next) = tmp.next.as_ref() {
                tmp = next;
            }
            tmp.next = Some(node);
        } else {
            *queue = Some(node);
        }
    }

    1
}
