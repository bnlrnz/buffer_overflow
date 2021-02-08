# buffer_overflow

Demonstrating buffer bverflow in 32 Bit and 64 Bit binaries. The binaries are compiled as position dependent code/executable (-no-pie).

If you enable PIE/PIC you need to recalculate the function address of "secretFunction" and run the buffer overflow in gdb (which disables aslr internally) or temporarily deactivate aslr globally for your kernel or locally in a shell session.

### Global
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