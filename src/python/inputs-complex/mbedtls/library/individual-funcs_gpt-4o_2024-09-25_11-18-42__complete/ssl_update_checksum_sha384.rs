   use sha2::{Sha512, Digest};

   // Your function implementation
   fn ssl_update_checksum_sha384(ssl: &mut mbedtls_ssl_context, buf: &[u8]) {
       let mut hasher = Sha512::new();
       hasher.update(buf);
       let result = hasher.finalize();
       // Assuming you need to update ssl.handshake.fin_sha512 with the result
       // You might need to convert `result` to the appropriate type
       // ssl.handshake.fin_sha512 = result; // This is just a placeholder
   }
   
   use sha2::{Sha512, Digest};

   struct mbedtls_ssl_context {
       handshake: mbedtls_ssl_handshake_params,
   }

   struct mbedtls_ssl_handshake_params {
       fin_sha512: Sha512,
   }

   fn ssl_update_checksum_sha384(ssl: &mut mbedtls_ssl_context, buf: &[u8]) {
       ssl.handshake.fin_sha512.update(buf);
   }

   fn main() {
       // Example usage
       let mut handshake_params = mbedtls_ssl_handshake_params {
           fin_sha512: Sha512::new(),
       };
       let mut ssl_context = mbedtls_ssl_context {
           handshake: handshake_params,
       };

       let data = b"example data";
       ssl_update_checksum_sha384(&mut ssl_context, data);
   }
   