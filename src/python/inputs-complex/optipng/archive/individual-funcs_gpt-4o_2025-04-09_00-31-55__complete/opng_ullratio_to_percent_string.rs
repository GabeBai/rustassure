type OpngUllongT = u64;

struct OpngUllratio {
    num: OpngUllongT,
    denom: OpngUllongT,
}

fn opng_ullratio_to_percent_string(buffer: &mut String, ratio: &OpngUllratio) -> Result<(), &'static str> {
    let num = ratio.num;
    let denom = ratio.denom;

    if denom == 0 {
        return Err("Denominator cannot be zero");
    }

    // Calculate the percentage
    let percentage = (num as f64 / denom as f64) * 100.0;

    // Format the percentage into the buffer
    *buffer = format!("{:.2}%", percentage);

    Ok(())
}

fn main() {
    let ratio = OpngUllratio { num: 50, denom: 200 };
    let mut buffer = String::new();

    match opng_ullratio_to_percent_string(&mut buffer, &ratio) {
        Ok(_) => println!("Formatted string: {}", buffer),
        Err(e) => println!("Error: {}", e),
    }
}
