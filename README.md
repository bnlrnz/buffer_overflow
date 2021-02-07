# buffer_overflow

To run overflows outside of gdb disable aslr:

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
