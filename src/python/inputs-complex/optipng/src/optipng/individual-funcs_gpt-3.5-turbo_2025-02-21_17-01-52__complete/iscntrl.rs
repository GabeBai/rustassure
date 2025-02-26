use std::char;

fn iscntrl(c: i32) -> bool {
    char::is_control(std::char::from_u32(c as u32).unwrap())
}
