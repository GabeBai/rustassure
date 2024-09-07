use std::collections::hash_map::DefaultHasher;
use std::hash::{Hash, Hasher};

#[derive(Hash, Eq, PartialEq)]
struct ExampleUser {
    id: i32,
}

impl ExampleUser {
    fn new(id: i32) -> Self {
        ExampleUser { id }
    }
}

fn idcmp(a: &ExampleUser, b: &ExampleUser) -> i32 {
    a.id - b.id
}

fn main() {
    let user1 = ExampleUser::new(1);
    let user2 = ExampleUser::new(2);

    let result = idcmp(&user1, &user2);
    println!("Result: {}", result);
}
