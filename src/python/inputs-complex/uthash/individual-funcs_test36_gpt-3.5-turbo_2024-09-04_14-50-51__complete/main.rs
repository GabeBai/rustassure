use std::collections::hash_map::DefaultHasher;
use std::hash::{Hash, Hasher};

#[derive(Debug)]
struct ExampleUser {
    id: i32,
}

impl Clone for ExampleUser {
    fn clone(&self) -> Self {
        ExampleUser { id: self.id }
    }
}

fn main() {
    let user1 = ExampleUser { id: 1 };
    let user2 = user1.clone();

    println!("User 1: {:?}", user1);
    println!("User 2: {:?}", user2);
}
