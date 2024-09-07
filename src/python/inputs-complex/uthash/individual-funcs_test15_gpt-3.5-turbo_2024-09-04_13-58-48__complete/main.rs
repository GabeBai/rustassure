use std::collections::HashMap;

#[derive(Debug)]
struct MyStruct {
    name: String,
    id: i32,
}

fn main() {
    let names = vec!["joe", "bob", "betty"];
    let mut users: HashMap<String, MyStruct> = HashMap::new();
    let mut i = 0;

    for name in names {
        let mut s = MyStruct {
            name: name.to_string(),
            id: i,
        };
        i += 1;

        users.insert(s.name.clone(), s);
    }

    if let Some(s) = users.get("betty") {
        println!("betty's id is {}", s.id);
    }

    users.remove("betty");

    println!("{:?}", users);
}
