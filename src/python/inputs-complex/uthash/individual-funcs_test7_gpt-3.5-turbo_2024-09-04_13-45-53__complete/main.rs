use std::collections::HashMap;

struct ExampleUser {
    id: i32,
    cookie: i32,
}

fn main() {
    let mut users: HashMap<i32, ExampleUser> = HashMap::new();

    for i in 0..1000 {
        let user = ExampleUser { id: i, cookie: i * i };
        users.insert(i, user);
    }

    for i in 0..1000 {
        if let Some(user) = users.remove(&i) {
            println!("user {}, cookie {}", user.id, user.cookie);
        } else {
            println!("user id {} not found", i);
        }
    }
}
