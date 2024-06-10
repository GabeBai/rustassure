rust
use std::io;
use deflate::{deflate, CompressionLevel};

fn deflate_params(strm: &mut DeflateStream, level: i32, strategy: i32) -> io::Result<()> {
    let s = strm.state();

    // Check if the provided compression level and strategy are valid
    match (level >= CompressionLevel::Fastest && level <= CompressionLevel::BestCompression, strategy >= 0 && strategy <= Z_FIXED) {
        true => {},
        false => return Err(io::Error::new(io::ErrorKind::InvalidInput, "invalid compression level or strategy")),
    };

    // If the provided compression level and strategy are different from the current ones, flush the last buffer
    if s.last_flush != -2 && (s.level != level || s.strategy != strategy) {
        let err = deflate(strm, Z_BLOCK)?;
        if strm.avail_in() > 0 {
            return Err(io::Error::new(io::ErrorKind::InvalidInput, "unexpected input data"));
        }
    }

    // Update the compression level and strategy
    s.level = match level {
        0 => CompressionLevel::NoCompression,
        _ => CompressionLevel::from_int(level),
    };
    s.max_lazy_match   = configuration_table[s.level].max_lazy;
    s.good_match       = configuration_table[s.level].good_length;
    s.nice_match       = configuration_table[s.level].nice_length;
    s.max_chain_length = configuration_table[s.level].max_chain;
    s.strategy = strategy;

    Ok(())
}