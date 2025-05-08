use std::io::{self, Write};

fn u8next_(txt: &str, ch: &mut i32) -> i32 {
    // Implementation of u8next_ function
    // You can add your logic here
    0
}

fn u8next_FAST(txt: &str, ch: &mut i32) -> i32 {
    // Implementation of u8next_FAST function
    // You can add your logic here
    0
}

fn main() {
    let s = ["Aa", "èa", "会員", "𧀀𧀍"];
    let cp = [0x41, 0xE8, 0x4F1A, 0x27000];

    for (k, &s1) in s.iter().enumerate() {
        let mut l = 0;
        let mut c = 0;

        l = u8next_(&s1, &mut c);

        let e_ = l != k as i32 + 1;
        let mut stderr = io::stderr();

        writeln!(stderr, "{}: ({}) \t{}:{}",
            if e_ { "FAIL" } else { "PASS" },
            if e_ { "l==k+1" } else { "" },
            "test2.rs",
            17
        ).unwrap();

        if e_ {
            writeln!(stderr, "    : Wrong length: expected {}, got {}", k + 1, l).unwrap();
        }

        l = u8next_FAST(&s1, &mut c);

        let e_ = l != k as i32 + 1;

        writeln!(stderr, "{}: ({}) \t{}:{}",
            if e_ { "FAIL" } else { "PASS" },
            if e_ { "l==k+1" } else { "" },
            "test2.rs",
            20
        ).unwrap();

        if e_ {
            writeln!(stderr, "    : (FAST) Wrong length: expected {}, got {}", k + 1, l).unwrap();
        }

        let e_ = c != cp[k];

        writeln!(stderr, "{}: ({}) \t{}:{}",
            if e_ { "FAIL" } else { "PASS" },
            if e_ { "c==cp[k]" } else { "" },
            "test2.rs",
            21
        ).unwrap();

        if e_ {
            writeln!(stderr, "    : (FAST) Wrong code: expected {:06X}, got {:06X}", cp[k], c).unwrap();
        }
    }
}
