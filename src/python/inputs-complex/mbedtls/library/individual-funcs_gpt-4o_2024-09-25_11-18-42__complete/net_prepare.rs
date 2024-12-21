use signal_hook::consts::SIGPIPE;
use signal_hook::flag;

fn net_prepare() -> i32 {
    // Ignore SIGPIPE signal
    flag::register(SIGPIPE, flag::Flag::new()).expect("Failed to register SIGPIPE handler");
    0
}

fn main() {
    net_prepare();
}
