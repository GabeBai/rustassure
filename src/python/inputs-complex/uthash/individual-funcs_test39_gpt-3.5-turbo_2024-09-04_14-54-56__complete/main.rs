use std::collections::HashMap;

struct ns_t {
    name: &'static str,
}

fn main() {
    let keys = vec!["eins", "zwei", "drei"];
    let mut hash_map: HashMap<&str, ns_t> = HashMap::new();

    for key in keys.iter() {
        println!("adding key {}", key);
        let nsp = ns_t { name: key };
        hash_map.insert(key, nsp);
    }

    println!("hash count is {}", hash_map.len());

    for key in keys.iter() {
        println!("looking for key {}... ", key);
        match hash_map.get(key) {
            Some(_) => println!("found."),
            None => println!("not found"),
        }
    }
}
