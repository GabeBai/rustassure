use std::fmt;

#[derive(Debug)]
struct Person {
    id: u32,
    name: String,
}

impl fmt::Display for Person {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "ID: {}, Name: {}", self.id, self.name)
    }
}

fn print_person(p: &Person) {
    println!("{}", p);
}

fn main() {
    let p = Person {
        id: 1,
        name: String::from("John Doe"),
    };
    print_person(&p);
}
