CC=gcc

vuln: vuln32 vuln64 payload32 payload64

run: run32 run64

payload32:
	python2 payload32.py > payload32
	
payload64:
	python2 payload64.py > payload64

vuln32: main32.o payload32
	$(CC) -o vuln32 main32.o -m32

vuln64: main64.o payload64
	$(CC) -o vuln64 main64.o

run32: vuln32
	gdb -ex run ./vuln32 < payload32

run64: vuln64
	gdb -ex run ./vuln64 < payload64

main32.o: main.c
	$(CC) -m32 -c main.c -o main32.o -O0 -fno-stack-protector

main64.o: main.c
	$(CC) -c main.c -o main64.o -O0 -fno-stack-protector

clean:
	rm -f vuln32 vuln64 payload32 payload64 main32.o main64.o