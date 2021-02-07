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

# Older GCC versions
Older gcc versions seam to produce binaries that are exploitable without disabling aslr in the kernel.
To test this you can user the Dockerfile in this repo to build the vuln64 (no multilib support).
Switch the python64.py lines where the rip value is written. Exploit with payload without gdb.

```bash
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gcc:4.9 make vuln64
```
