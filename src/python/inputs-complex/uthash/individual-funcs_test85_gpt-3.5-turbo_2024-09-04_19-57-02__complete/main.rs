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

    let overhead = if users.is_empty() {
        "zero"
    } else {
        "non-zero"
    };
    println!("overhead {}", overhead);

    // Clear the hash table
    users.clear();

    let overhead = if users.is_empty() {
        "zero"
    } else {
        "non-zero"
    };
    println!("overhead {}", overhead);
}
