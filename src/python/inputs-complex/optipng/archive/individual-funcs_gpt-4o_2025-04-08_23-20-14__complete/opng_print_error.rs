fn print_message(fmt: &str, msg: &str) {
    // Ensure fmt is a valid format string
    match fmt {
        "{}" => println!("{}", msg),
        "{:?}" => println!("{:?}", msg),
        _ => println!("Unsupported format: {}", fmt),
    }
}
