const fn gnu_dev_makedev(major: u32, minor: u32) -> u64 {
    let dev: u64 = ((major & 0x00000fff) as u64) << 8;
    let dev = dev | ((major & 0xfffff000) as u64) << 32;
    let dev = dev | ((minor & 0x000000ff) as u64) << 0;
    let dev = dev | ((minor & 0xffffff00) as u64) << 12;
    dev
}

fn main() {
    let major = 10;
    let minor = 20;
    let dev = gnu_dev_makedev(major, minor);
    println!("dev: {}", dev);
}
