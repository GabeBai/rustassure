use std::collections::HashMap;

struct Item {
    sort_field: Vec<u8>,
    some_user_data: i32,
}

fn main() {
    let mut list: HashMap<Vec<u8>, Item> = HashMap::new();
    let mut counter = 0;

    for i in 0..100 {
        let mut item = Item {
            sort_field: vec![0; std::mem::size_of::<i32>()],
            some_user_data: counter,
        };

        list.insert(item.sort_field.clone(), item);
        counter += 1;
    }

    println!("filling in is ok");

    let mut total = 0;
    for (_, item) in list.iter() {
        total += i32::from_ne_bytes(item.sort_field.as_slice().try_into().unwrap());
    }

    assert_eq!(total, 4950);
    println!("cleanup is ok");
}
