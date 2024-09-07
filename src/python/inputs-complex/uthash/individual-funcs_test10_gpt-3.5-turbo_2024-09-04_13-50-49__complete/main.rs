use hashbrown::{HashMap, HashSet};

#[derive(Debug, PartialEq, Eq, Hash)]
struct ExampleUser {
    id: i32,
    cookie: i32,
}

fn main() {
    let mut users: HashMap<i32, ExampleUser> = HashMap::new();
    let mut alt_users: HashMap<i32, ExampleUser> = HashMap::new();

    for i in 0..1000 {
        let user = ExampleUser { id: i, cookie: i * i };
        users.insert(i, user.clone());

        if i < 10 {
            alt_users.insert(i, user.clone());
        }
    }

    let i = 9;
    let user_found = users.get(&i).is_some();
    println!("{} {} in hh", i, if user_found { "found" } else { "not found" });

    let alt_user_found = alt_users.get(&i).is_some();
    println!("{} {} in alth", i, if alt_user_found { "found" } else { "not found" });

    let i = 10;
    let user_found = users.get(&i).is_some();
    println!("{} {} in hh", i, if user_found { "found" } else { "not found" });

    let alt_user_found = alt_users.get(&i).is_some();
    println!("{} {} in alth", i, if alt_user_found { "found" } else { "not found");
}
