use std::collections::hash_map::DefaultHasher;
use std::hash::{Hash, Hasher};

#[derive(Debug, Eq)]
struct HStruct {
    name: String,
    weight: i32,
}

impl PartialEq for HStruct {
    fn eq(&self, other: &Self) -> bool {
        self.weight == other.weight
    }
}

impl Hash for HStruct {
    fn hash<H: Hasher>(&self, state: &mut H) {
        self.weight.hash(state);
    }
}

fn main() {
    let s1 = HStruct {
        name: String::from("Alice"),
        weight: 10,
    };

    let s2 = HStruct {
        name: String::from("Bob"),
        weight: 20,
    };

    println!("s1 == s2: {}", s1 == s2);
}
