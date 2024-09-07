use std::collections::HashMap;

#[derive(Debug)]
struct Item {
    name: String,
    sub: Option<Box<Item>>,
    val: i32,
}

fn main() {
    let mut items: HashMap<String, Box<Item>> = HashMap::new();

    let mut item1 = Box::new(Item {
        name: String::from("bob"),
        sub: None,
        val: 0,
    });

    let mut item2 = Box::new(Item {
        name: String::from("age"),
        sub: None,
        val: 37,
    });

    item1.sub = Some(item2);

    items.insert(item1.name.clone(), item1);

    for (_, item1) in items.iter_mut() {
        if let Some(item2) = &mut item1.sub {
            println!("items{{{}}}{{{}}} = {}", item1.name, item2.name, item2.val);
            item1.sub = None;
        }
    }
}
