#[derive(Debug, Clone, Copy)]
struct IntPair {
    a: i32,
    b: i32,
}

fn main() {
    let mut pairs: Vec<IntPair> = Vec::new();

    let it = IntPair { a: 1, b: 2 };
    pairs.push(it);
    println!("push");
    println!("length is {}", pairs.len());

    if let Some(ip) = pairs.last() {
        println!("back is {} {}", ip.a, ip.b);
    }

    pairs.pop();
    println!("pop");
    println!("length is {}", pairs.len());

    let it = IntPair { a: 1, b: 2 };
    pairs.push(it);
    println!("push");

    let it = IntPair { a: 3, b: 4 };
    pairs.push(it);
    println!("push");
    println!("length is {}", pairs.len());

    for ip in &pairs {
        println!("{} {}", ip.a, ip.b);
    }

    pairs.remove(0);
    println!("erase [0]");
    println!("length is {}", pairs.len());

    let it = IntPair { a: 1, b: 2 };
    pairs.push(it);
    println!("push");

    for ip in &pairs {
        println!("{} {}", ip.a, ip.b);
    }

    pairs.clear();
    println!("clear");
    println!("length is {}", pairs.len());

    pairs.resize(30, IntPair { a: 0, b: 0 });
    println!("resize to 30");
    println!("length is {}", pairs.len());

    pairs.resize(1, IntPair { a: 0, b: 0 });
    println!("resize to 1");
    println!("length is {}", pairs.len());

    pairs.resize(0, IntPair { a: 0, b: 0 });
    println!("resize to 0");
    println!("length is {}", pairs.len());
}
