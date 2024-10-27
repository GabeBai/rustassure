fn function(a: i32) -> i32 {
    let b = a + 222;
    let c = 20 * b;
    if c > 111 {
        c + 101
    } else {
        c
    }
}

fn main() {
    let a = 10; // Example input
    let result = function(a);
    println!("Result: {}", result);
}
