# buffer_overflow

Demonstrating buffer overflow in 32 Bit and 64 Bit binaries. The binaries are compiled as [position dependent code/executable](https://en.wikipedia.org/wiki/Position-independent_code) (-no-pie).

## Makefile / Run buffer overflow
```bash
make       # will build the binaries and payloads
./vuln32 < payload32
./vuln64 < payload64

make run   # will build the binaries and payloads, and runs both binaries with the payload as input
make run32 # like run, but just for 32 Bit
make run64 # like run, but just for 64 Bit
make clean # you know what it does
```

## PIE/PIC

If you enable PIE/PIC you need to recalculate the function address of "secretFunction" and run the buffer overflow in gdb (which disables [aslr](https://en.wikipedia.org/wiki/Address_space_layout_randomization) internally) or temporarily deactivate aslr globally for your kernel or locally in a shell session.

### Global (needs root)
```bash
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space
```
Don't forget to enable afterwards:
```bash
echo 2 | sudo tee /proc/sys/kernel/randomize_va_space
```

### Local
```bash
setarch -R /bin/bash
```
