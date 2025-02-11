#![allow(unaligned_references)]
#[derive(Debug)]
enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

impl std::ops::Neg for ZError {
    type Output = Self;

#[no_mangle]
#[no_mangle]
    fn neg(self) -> Self::Output {
        match self {
            ZError::ZErrorErrnoSet => ZError::ZErrorErrnoSet,
            ZError::ZError0Pow0 => ZError::ZError0Pow0,
            ZError::ZError0Div0 => ZError::ZError0Div0,
            ZError::ZErrorDiv0 => ZError::ZErrorDiv0,
            ZError::ZErrorNegative => ZError::ZErrorNegative,
            ZError::ZErrorInvalidRadix => ZError::ZErrorInvalidRadix,
        }
    }
}

#[no_mangle]
#[no_mangle]
fn libzahl_failure(error: ZError) {
    println!("Libzahl failure: {:?}", error);
}

enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[no_mangle]
#[no_mangle]
fn main() {
    libzahl_failure(-ZError::ZError0Pow0);
}
