fn u8next(txt: &str, ch: &mut u32) -> Option<usize> {
    let mut chars = txt.chars();
    if let Some(c) = chars.next() {
        *ch = c as u32; // Convert the char to a u32 code point
        Some(c.len_utf8()) // Return the number of bytes used by the character
    } else {
        None // No more characters
    }
}

fn u8codepoint(s: &str) -> Option<u32> {
    let mut c = 0u32;
    if u8next(s, &mut c).is_some() {
        Some(c)
    } else {
        None // Return None if there are no code points
    }
}

fn main() {
    let s = "Hello, 世界"; // Example string
    if let Some(codepoint) = u8codepoint(s) {
        println!("The first code point is: {}", codepoint);
    } else {
        println!("No code points found.");
    }
}
