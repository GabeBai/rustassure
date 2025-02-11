#![allow(unaligned_references)]
use std::mem;
use std::ptr;

type ZahlCharT = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: usize,
    alloced: usize,
    chars: Vec<ZahlCharT>,
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(a: &mut Zahl, new_size: usize) {
    a.chars.resize(new_size, 0);
}

#[no_mangle]
#[no_mangle]
fn zzero(a: &Zahl) -> bool {
    a.used == 0
}

#[no_mangle]
#[no_mangle]
fn zload(a: &mut Zahl, buffer: &[u8]) -> usize {
    let mut offset = 0;

    // Read the sign
    a.sign = i32::from_ne_bytes(buffer[offset..offset + mem::size_of::<i32>()].try_into().unwrap());
    offset += mem::size_of::<i32>();

    // Read the used size
    a.used = usize::from_ne_bytes(buffer[offset..offset + mem::size_of::<usize>()].try_into().unwrap());
    offset += mem::size_of::<usize>();

    if a.sign != 0 {
        if a.alloced < a.used {
            libzahl_realloc(a, a.used);
        }

        // Copy the chars
        let chars_size = a.used * mem::size_of::<ZahlCharT>();
        let chars_slice = &buffer[offset..offset + chars_size];
        let chars: Vec<ZahlCharT> = chars_slice
            .chunks_exact(mem::size_of::<ZahlCharT>())
            .map(|chunk| ZahlCharT::from_ne_bytes(chunk.try_into().unwrap()))
            .collect();

        a.chars.clear();
        a.chars.extend_from_slice(&chars);
    }

    mem::size_of::<i32>() + mem::size_of::<usize>() + if zzero(a) { 0 } else { ((a.used + 3) & !3) * mem::size_of::<ZahlCharT>() }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let buffer: Vec<u8> = vec![/* some data */];
    let mut a = Zahl {
        sign: 0,
        used: 0,
        alloced: 0,
        chars: Vec::new(),
    };

    zload(&mut a, &buffer);
}
