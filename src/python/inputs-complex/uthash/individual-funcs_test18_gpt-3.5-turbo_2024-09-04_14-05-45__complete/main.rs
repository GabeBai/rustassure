use std::collections::HashMap;

#[derive(Debug)]
struct ExampleUser {
    id: i32,
    cookie: i32,
}

fn main() {
    let mut users: HashMap<i32, ExampleUser> = HashMap::new();

    for i in 0..10 {
        let user = ExampleUser {
            id: i,
            cookie: i * i,
        };
        users.insert(user.id, user);
    }

    for user in users.values() {
        println!("user {}, cookie {}", user.id, user.cookie);
    }

    users.clear();
}
