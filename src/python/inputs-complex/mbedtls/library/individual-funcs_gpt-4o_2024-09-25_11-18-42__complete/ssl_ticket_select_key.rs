use std::cmp::PartialEq;
use std::ptr;

#[derive(Debug)]
struct MbedtlsSslTicketKey {
    name: [u8; 4],
    generation_time: u32,
    // other fields...
}

#[derive(Debug)]
struct MbedtlsSslTicketContext {
    keys: [MbedtlsSslTicketKey; 2],
    active: u8,
    ticket_lifetime: u32,
    // other fields...
}

struct NameWrapper([u8; 4]);

impl PartialEq for NameWrapper {
    fn eq(&self, other: &Self) -> bool {
        self.0 == other.0
    }
}

fn ssl_ticket_select_key(ctx: &MbedtlsSslTicketContext, name: [u8; 4]) -> Option<&MbedtlsSslTicketKey> {
    let name_wrapper = NameWrapper(name);
    for key in &ctx.keys {
        if NameWrapper(key.name) == name_wrapper {
            return Some(key);
        }
    }
    None
}

fn main() {
    // Example usage
    let key1 = MbedtlsSslTicketKey {
        name: [1, 2, 3, 4],
        generation_time: 123456,
        // other fields...
    };
    let key2 = MbedtlsSslTicketKey {
        name: [5, 6, 7, 8],
        generation_time: 654321,
        // other fields...
    };
    let ctx = MbedtlsSslTicketContext {
        keys: [key1, key2],
        active: 1,
        ticket_lifetime: 3600,
        // other fields...
    };

    let name_to_search = [1, 2, 3, 4];
    if let Some(key) = ssl_ticket_select_key(&ctx, name_to_search) {
        println!("Found key: {:?}", key);
    } else {
        println!("Key not found");
    }
}
