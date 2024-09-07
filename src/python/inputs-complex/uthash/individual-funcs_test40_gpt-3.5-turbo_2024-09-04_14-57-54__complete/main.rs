use std::collections::HashMap;

struct MyStruct {
    name: &'static str,
    id: i32,
}

fn main() {
    let names = ["joe", "bob", "betty"];
    let mut users: HashMap<&str, MyStruct> = HashMap::new();

    for (i, &name) in names.iter().enumerate() {
        let s = MyStruct { name, id: i as i32 };
        users.insert(name, s);
    }

    if let Some(s) = users.get("betty") {
        println!("betty's id is {}", s.id);
    }

    // No need to manually free memory in Rust, it is handled by the ownership system
}
