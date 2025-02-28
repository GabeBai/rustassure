fn _OSSwapInt16(_data: u16) -> u16 {
    ((_data << 8) | (_data >> 8)) as u16
}
