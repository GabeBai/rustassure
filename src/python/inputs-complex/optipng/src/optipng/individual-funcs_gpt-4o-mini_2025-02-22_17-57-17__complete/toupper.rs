fn toupper(c: char) -> char {
    c.to_uppercase().next().unwrap_or(c)
}

fn main() {
    let lowercase = 'a';
    let uppercase = toupper(lowercase);
    println!("Uppercase of '{}' is '{}'", lowercase, uppercase);
}
