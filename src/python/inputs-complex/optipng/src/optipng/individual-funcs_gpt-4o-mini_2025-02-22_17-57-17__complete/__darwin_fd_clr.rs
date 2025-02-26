use std::mem;

#[derive(Debug)]
struct FdSet {
    fds_bits: Vec<i32>, // Using Vec<i32> for dynamic sizing
}

fn darwin_fd_clr(fd: i32, fd_set: &mut FdSet) {
    let bitset_size = (1024 + (mem::size_of::<i32>() * 8) - 1) / (mem::size_of::<i32>() * 8);
    if fd_set.fds_bits.len() < bitset_size {
        // Ensure the vector is large enough
        fd_set.fds_bits.resize(bitset_size, 0);
    }

    let index = (fd as usize) / (mem::size_of::<i32>() * 8);
    let bit = (1 << (fd as usize % (mem::size_of::<i32>() * 8))) as i32;

    // Clear the bit
    fd_set.fds_bits[index] &= !bit;
}

fn main() {
    let mut fd_set = FdSet { fds_bits: vec![0; 1] }; // Initialize with one element
    let fd: i32 = 5; // Example file descriptor
    darwin_fd_clr(fd, &mut fd_set);
    println!("{:?}", fd_set);
}
