#![allow(unaligned_references)]
use rand::Rng;
use std::convert::TryInto;

type ZahlCharT = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: usize,
    alloced: usize,
    chars: Vec<ZahlCharT>,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn new() -> Self {
        Zahl {
            sign: 0,
            used: 0,
            alloced: 0,
            chars: Vec::new(),
        }
    }

#[no_mangle]
#[no_mangle]
    fn realloc(&mut self, new_size: usize) {
        if self.alloced < new_size {
            self.chars.resize(new_size, 0);
            self.alloced = new_size;
        }
    }
}

#[no_mangle]
#[no_mangle]
fn zrand_get_random_bits<F>(r: &mut Zahl, bits: usize, mut fun: F, statep: &mut ())
where
    F: FnMut(&mut [u8], &mut ()),
{
    let chars = (bits + 63) / 64;
    let mut mask: ZahlCharT = 1;

    r.realloc(chars);
    let mut buffer = vec![0u8; chars * std::mem::size_of::<ZahlCharT>()];
    fun(&mut buffer, statep);

    for (i, chunk) in buffer.chunks_exact(8).enumerate() {
        r.chars[i] = ZahlCharT::from_le_bytes(chunk.try_into().unwrap());
    }

    let bits = bits & 63;
    mask <<= bits;
    mask -= 1;
    if let Some(last) = r.chars.last_mut() {
        *last &= mask;
    }

    for n in (0..chars).rev() {
        if r.chars[n] != 0 {
            r.used = n + 1;
            r.sign = 1;
            return;
        }
    }
    r.sign = 0;
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut zahl = Zahl::new();
    zrand_get_random_bits(&mut zahl, 128, |buf, _| {
        let mut rng = rand::thread_rng();
        rng.fill(buf);
    }, &mut ());
    println!("{:?}", zahl.chars);
}
