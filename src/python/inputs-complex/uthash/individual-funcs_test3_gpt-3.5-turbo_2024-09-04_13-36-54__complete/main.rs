use std::collections::HashMap;

#[derive(Debug, PartialEq, Eq, Hash)]
struct ExampleUser {
    id: i32,
    cookie: i32,
}

fn main() {
    let mut users: HashMap<i32, ExampleUser> = HashMap::new();

    for i in 0..10 {
        let user = ExampleUser { id: i, cookie: i * i };
        users.insert(i, user);
    }

    for i in (0..10).step_by(2) {
        if let Some(user) = users.remove(&i) {
            println!("user {:?} removed", user);
        } else {
            println!("user id {} not found", i);
        }
    }

    for user in users.values() {
        println!("user {:?}, cookie {}", user.id, user.cookie);
    }
}
