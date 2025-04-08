fn main() {
    let fmt = "Hello, {}!";
    let args = "world";
    println!("{}", fmt.replace("{}", args));
}
