#![allow(unaligned_references)]
use std::ffi::CString;
use std::ptr;
use std::io::{self, Write};

#[repr(C, packed)]struct UrlKeyValue {
    key: String,
    value: String,
}

#[no_mangle]
#[no_mangle]
fn parse_query_string(begin: &str, end: &str) -> Option<Vec<UrlKeyValue>> {
    let mut elements = 1;
    for c in begin.chars() {
        if c == '&' || c == ';' {
            elements += 1;
        }
    }

    let mut kv = Vec::with_capacity(elements + 1);
    let mut p = begin;

    for _ in 0..=elements {
        if p >= end {
            break;
        }

        let key = p;
        let kv_end = scan_part(p, '&', ';')?;
        let key_end = scan_part(p, '=', '\0')?;
        let has_value = key_end.chars().next() == Some('=');

        let key_decoded = decode_percent(key);
        let value_decoded = if has_value {
            let value = &key_end[1..];
            decode_percent(value)
        } else {
            key_end.to_string()
        };

        kv.push(UrlKeyValue {
            key: key_decoded,
            value: value_decoded,
        });

        p = &kv_end[1..];
    }

    Some(kv)
}

#[no_mangle]
#[no_mangle]
fn scan_part<'a>(input: &'a str, delim1: char, delim2: char) -> Option<&'a str> {
    input.split(|c| c == delim1 || c == delim2).next()
}

#[no_mangle]
#[no_mangle]
fn decode_percent(input: &str) -> String {
    // Implement percent-decoding logic here
    input.to_string()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let begin = "key1=value1&key2=value2";
    let end = "";
    match parse_query_string(begin, end) {
        Some(kv) => {
            for pair in kv {
                println!("Key: {}, Value: {}", pair.key, pair.value);
            }
        }
        None => {
            eprintln!("ERROR: Failed to parse query string");
        }
    }
}
