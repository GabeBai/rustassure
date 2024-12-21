use std::time::Duration;
use std::thread::sleep;

fn mbedtls_net_usleep(usec: u64) {
    let duration = Duration::from_micros(usec);
    sleep(duration);
}
