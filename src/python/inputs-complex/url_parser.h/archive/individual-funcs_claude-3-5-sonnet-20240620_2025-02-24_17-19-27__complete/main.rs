use std::collections::HashMap;

#[derive(Clone, Copy, PartialEq, Eq, Hash)]
enum Category {
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

const ALNUM: &str = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
const UNRESERVED: &str = "-._~";
const SUBDELIM: &str = "!$&'()*+,;=";

fn main() {
    let mut table = HashMap::new();

    fill(&mut table, Category::Scheme, ALNUM, "+-.");
    fill(&mut table, Category::Unreserved, ALNUM, UNRESERVED);
    fill(&mut table, Category::GenDelim, ALNUM, ":/?#[]@");
    fill(&mut table, Category::SubDelim, ALNUM, SUBDELIM);
    fill(&mut table, Category::PCharSlash, ALNUM, ":@/%");
    fill(&mut table, Category::PCharSlash, UNRESERVED, SUBDELIM);
    fill(&mut table, Category::HexDigit, "0123456789", "abcdefABCDEF");
    fill(&mut table, Category::Query, ALNUM, "/?:@%");
    fill(&mut table, Category::Query, UNRESERVED, SUBDELIM);
    fill(&mut table, Category::Userinfo, ALNUM, ":%");
    fill(&mut table, Category::Userinfo, UNRESERVED, SUBDELIM);
    fill(&mut table, Category::IPv6Char, "0123456789", "abcdefABCDEF:");

    print_table(&table);
}