use std::fs::File;
use std::io::{BufRead, BufReader};
use std::ptrace;
use std::libc::{pid_t, off_t};

struct Vma {
    start: off_t,
    end: off_t,
    perms: [char; 4],
    device: [char; 5],
}

const SIG: u32 = 0xa0111fe1;
static mut VERBOSE: i32 = 0;
static mut GETKEYS: i32 = 0;
static HASH_FCNS: [&str; 7] = ["???", "JEN", "BER", "SFH", "SAX", "FNV", "OAT"];

fn scan(pid: pid_t) -> i32 {
    let mapfile = format!("/proc/{}", pid);
    let memfile = format!("/proc/{}/mem", pid);
    let mut vmas: Vec<Vma> = Vec::new();
    let mut num_vmas = 0;

    unsafe {
        println!("attaching to peer");
    }

    if ptrace(PTRACE_ATTACH, pid, 0 as *mut _, 0) == -1 {
        eprintln!("failed to attach to {}: {}", pid, strerror(*__errno_location()));
        return -1;
    }

    unsafe {
        println!("waiting for peer to suspend temporarily");
    }

    if waitpid(pid, 0 as *mut _, 0) != pid {
        eprintln!("failed to wait for pid {}: {}", pid, strerror(*__errno_location()));
        return -1;
    }

    let mapf = match File::open(&mapfile) {
        Ok(f) => f,
        Err(e) => {
            eprintln!("failed to open {}: {}", mapfile, e);
            return -1;
        }
    };

    for line in BufReader::new(mapf).lines() {
        if let Ok(l) = line {
            let mut parts = l.split_whitespace();
            if let (Some(pstart), Some(pend), Some(perms), Some(device)) = (parts.next(), parts.next(), parts.next(), parts.last()) {
                let vma = Vma {
                    start: pstart.parse().unwrap(),
                    end: pend.parse().unwrap(),
                    perms: perms.chars().collect::<Vec<char>>().try_into().unwrap(),
                    device: device.chars().collect::<Vec<char>>().try_into().unwrap(),
                };

                if vma.perms[0] != 'r' {
                    continue;
                }

                if vma.device.starts_with("fd") {
                    continue;
                }

                vmas.push(vma);
                num_vmas += 1;
            }
        }
    }

    unsafe {
        println!("peer has {} virtual memory areas", num_vmas);
    }

    let memfd = match File::open(&memfile) {
        Ok(f) => f,
        Err(e) => {
            eprintln!("failed to open {}: {}", memfile, e);
            return -1;
        }
    };

    for vma in vmas {
        sigscan(memfd, vma.start, vma.end, SIG, pid);
    }

    unsafe {
        println!("detaching and resuming peer");
    }

    if ptrace(PTRACE_DETACH, pid, 0 as *mut _, 0) == -1 {
        eprintln!("failed to detach from {}: {}", pid, strerror(*__errno_location()));
    }

    0
}
