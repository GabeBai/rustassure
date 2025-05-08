use std::ops::BitOr;

#[derive(Debug)]
pub enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

impl BitOr for Category {
    type Output = Self;

    fn bitor(self, rhs: Self) -> Self {
        match (self, rhs) {
            (Category::Scheme, Category::Scheme) => Category::Scheme,
            (Category::Unreserved, Category::Unreserved) => Category::Unreserved,
            (Category::GenDelim, Category::GenDelim) => Category::GenDelim,
            (Category::SubDelim, Category::SubDelim) => Category::SubDelim,
            (Category::PCharSlash, Category::PCharSlash) => Category::PCharSlash,
            (Category::HexDigit, Category::HexDigit) => Category::HexDigit,
            (Category::Query, Category::Query) => Category::Query,
            (Category::Fragment, Category::Fragment) => Category::Fragment,
            (Category::Userinfo, Category::Userinfo) => Category::Userinfo,
            (Category::IPv6Char, Category::IPv6Char) => Category::IPv6Char,
            _ => unimplemented!(),
        }
    }
}

fn main() {
    let category = Category::Query | Category::Fragment;
    println!("{:?}", category);
}
