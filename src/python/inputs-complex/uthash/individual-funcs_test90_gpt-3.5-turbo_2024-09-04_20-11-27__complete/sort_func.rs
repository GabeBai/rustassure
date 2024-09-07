use hashbrown::HashMap;

struct Item {
    sort_field: Vec<u8>,
    sort_field_len: usize,
    some_user_data: i32,
}

impl Item {
    fn new(sort_field: Vec<u8>, sort_field_len: usize, some_user_data: i32) -> Self {
        Item {
            sort_field,
            sort_field_len,
            some_user_data,
        }
    }
}

fn sort_func(a: &Item, b: &Item) -> i32 {
    let va = *(a.sort_field.as_ptr() as *const i32);
    let vb = *(b.sort_field.as_ptr() as *const i32);
    va.cmp(&vb)
}

fn main() {
    let mut items: HashMap<usize, Item> = HashMap::new();

    // Example usage
    let item1 = Item::new(vec![1, 2, 3], 3, 42);
    let item2 = Item::new(vec![4, 5, 6], 3, 24);

    items.insert(1, item1);
    items.insert(2, item2);

    // Sorting items
    let mut sorted_items: Vec<&Item> = items.values().collect();
    sorted_items.sort_by(|a, b| sort_func(a, b));

    for item in sorted_items {
        println!("{:?}", item);
    }
}
