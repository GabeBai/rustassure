#![allow(unaligned_references)]
use std::mem::ManuallyDrop;

type SizeT = usize;
type ZahlCharT = u64;

#[derive(Debug)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: SizeT,
    alloced: SizeT,
    chars: Vec<ZahlCharT>,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn new(alloced: SizeT) -> Self {
        Zahl {
            sign: 0,
            used: 0,
            alloced,
            chars: vec![0; alloced],
        }
    }

#[no_mangle]
#[no_mangle]
    fn realloc(&mut self, new_size: SizeT) {
        if self.alloced < new_size {
            self.chars.resize(new_size, 0);
            self.alloced = new_size;
        }
    }
}

#[no_mangle]
#[no_mangle]
fn zsqr_ll_single_char(a: &mut Zahl, b: &Zahl) {
    a.realloc(1);
    a.used = 1;
    a.chars[0] = b.chars[0] * b.chars[0];
    a.sign = 1;
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut a = Zahl::new(1);
    let b = Zahl {
        sign: 1,
        used: 1,
        alloced: 1,
        chars: vec![3],
    };

    zsqr_ll_single_char(&mut a, &b);
    println!("{:?}", a);
}
