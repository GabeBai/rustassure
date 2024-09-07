use std::collections::HashMap;

#[derive(Clone)]
struct Person {
    first_name: String,
    id: i32,
}

fn main() {
    let mut people: HashMap<String, Person> = HashMap::new();
    let names = vec!["bob", "jack", "gary", "ty", "bo", "phil", "art", "gil", "buck", "ted"];

    for (id, name) in names.iter().enumerate() {
        let person = Person {
            first_name: name.to_string(),
            id: id as i32,
        };
        let hash_key = person.first_name.clone();
        people.insert(hash_key, person.clone());
        println!("added {} (id {})", person.first_name, person.id);
    }

    for name in names.iter() {
        if let Some(person) = people.get_mut(*name) {
            println!("found {} (id {})", person.first_name, person.id);
            let new_person = Person {
                first_name: person.first_name.clone(),
                id: person.id * 10,
            };
            let hash_key = new_person.first_name.clone();
            people.insert(hash_key, new_person.clone());
            println!("replaced with {} (id {})", new_person.first_name, new_person.id);
        } else {
            println!("failed to find {}", name);
        }
    }

    println!("traversing...");
    for person in people.values() {
        println!("{} (id {})", person.first_name, person.id);
    }
}
