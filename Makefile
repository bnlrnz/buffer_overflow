CC=gcc

vuln: vuln32 vuln64 payload32 payload64

run: run32 run64

payload32:
	python2 payload32.py > payload32
	
payload64:
	python2 payload64.py > payload64

vuln32: payload32
	$(CC) main.c -O0 -o vuln32 -fno-stack-protector -m32

vuln64: payload64
	$(CC) main.c -O0 -o vuln64 -fno-stack-protector

run32: vuln32
	gdb -ex run ./vuln32 < payload32

run64: vuln64
	gdb -ex run ./vuln64 < payload64

clean:
	rm -f vuln32 vuln64 payload32 payload64