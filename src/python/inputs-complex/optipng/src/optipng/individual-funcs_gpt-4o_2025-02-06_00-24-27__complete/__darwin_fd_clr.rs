#![allow(unaligned_references)]
use std::mem;

#[repr(C)]
#[repr(C, packed)]struct FdSet {
    fds_bits: [i32; 32], // Assuming 1024 bits, 32 * 32 = 1024
}

#[no_mangle]
#[no_mangle]
fn fd_clr(fd: i32, fd_set: &mut FdSet) {
    let index = (fd as usize) / (mem::size_of::<i32>() * 8);
    let bit = (fd as usize) % (mem::size_of::<i32>() * 8);
    fd_set.fds_bits[index] &= !(1 << bit);
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut fd_set = FdSet { fds_bits: [0; 32] };
    let fd = 5; // Example file descriptor

    // Clear the file descriptor
    fd_clr(fd, &mut fd_set);

    // Check if the file descriptor is cleared
    let index = (fd as usize) / (mem::size_of::<i32>() * 8);
    let bit = (fd as usize) % (mem::size_of::<i32>() * 8);
    let is_cleared = (fd_set.fds_bits[index] & (1 << bit)) == 0;

    println!("File descriptor {} is cleared: {}", fd, is_cleared);
}
