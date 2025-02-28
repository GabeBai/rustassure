fn u8strncat(dest: &mut String, src: &str, n: usize) {
    dest.push_str(&src.chars().take(n).collect::<String>());
}

fn main() {
    let mut dest = String::from("Hello, ");
    let src = "world!";
    let n = 3;
    
    u8strncat(&mut dest, src, n);
    
    println!("{}", dest); // Output: Hello, wor
}
