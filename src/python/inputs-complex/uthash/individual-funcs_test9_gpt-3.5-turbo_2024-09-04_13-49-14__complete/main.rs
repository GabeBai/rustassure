use hashbrown::{HashMap, hash_map::DefaultHashBuilder};

#[derive(Debug)]
struct ExampleUser {
    id: i32,
    cookie: i32,
}

fn main() {
    let mut users: HashMap<i32, ExampleUser, DefaultHashBuilder> = HashMap::default();

    for i in 0..1000 {
        let user = ExampleUser { id: i, cookie: i * i };
        users.insert(user.id, user);
    }

    for i in (0..1000).step_by(2) {
        if let Some(user) = users.get(&i) {
            println!("user {}, cookie {}", user.id, user.cookie);
        } else {
            println!("user id {} not found", i);
        }
    }
}
