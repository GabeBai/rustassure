use std::collections::HashMap;

#[derive(Debug)]
struct ExampleUser {
    id: i32,
    cookie: i32,
}

fn main() {
    let mut users: HashMap<i32, ExampleUser> = HashMap::new();

    for i in 0..10 {
        let user = ExampleUser { id: i, cookie: i * i };
        users.insert(user.id, user);
    }

    for i in (0..10).step_by(2) {
        if let Some(user) = users.remove(&i) {
            println!("User id {} removed: {:?}", i, user);
        } else {
            println!("User id {} not found", i);
        }
    }

    let i = 9;
    if let Some(user) = users.get(&i) {
        println!("User id {} found: {:?}", i, user);
    } else {
        println!("User id {} not found", i);
    }
}
