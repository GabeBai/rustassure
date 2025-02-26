use std::collections::HashMap;

#[derive(Debug, PartialEq, Eq, Hash)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x80,
    Userinfo = 0x100,
    IPv6Char = 0x200,
}

fn fill(category: Category, chars1: &str, chars2: &str) {
    // Implementation of fill function
}

fn print_table() {
    // Implementation of print_table function
}

const ALNUM: &str = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
const UNRESERVED: &str = "-._~";
const SUBDELIM: &str = "!$&'()*+,;=";

fn main() {
    fill(Category::Scheme, ALNUM, "+-.");
    fill(Category::Unreserved, ALNUM, UNRESERVED);
    fill(Category::GenDelim, ALNUM, ":/?#[]@");
    fill(Category::SubDelim, ALNUM, SUBDELIM);
    fill(Category::PCharSlash, ALNUM, ":@/%");
    fill(Category::PCharSlash, UNRESERVED, SUBDELIM);
    fill(Category::HexDigit, "0123456789", "abcdefABCDEF");
    fill(Category::Query, ALNUM, "/?:@%");
    fill(Category::Query, UNRESERVED, SUBDELIM);
    fill(Category::Userinfo, ALNUM, ":%");
    fill(Category::Userinfo, UNRESERVED, SUBDELIM);
    fill(Category::IPv6Char, "0123456789", "abcdefABCDEF:");
    print_table();
}
