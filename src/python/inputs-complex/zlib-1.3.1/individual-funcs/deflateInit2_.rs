[PYTHON]
import zlib

compressed = zlib.compress(bytes([1, 2, 3, 4, 5]), level=9)
decompressed = zlib.decompress(compressed)

assert decompressed == bytes([1, 2, 3, 4, 5])
[/PYTHON]
[TESTS]
# Test case from https://zlib.net/zlib_how.html
assert zlib.compress(b'') == b'\x78\x9c\x01\x03\x00\x00\x00\x00\xff'
# Test case for https://github.com/facebook/zstd/issues/2564
assert zlib.compress(b'\x00' * 32 + b'\xff') == b'\x78\xda\x34\x56\x01\x00\x00\x00\xff'
[/TESTS]
```
