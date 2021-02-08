CC=gcc

vuln: vuln32 vuln64 payload32 payload64

run: run32 run64

payload32:
	python2 payload32.py > payload32
	
payload64:
	python2 payload64.py > payload64

vuln32: main32.o payload32

vuln64: main64.o payload64

run32: vuln32
	- ./vuln32 < payload32

run64: vuln64
	- ./vuln64 < payload64

main32.o: main.c
	$(CC) -o vuln32 -m32 main.c -O0 -fno-stack-protector -no-pie

main64.o: main.c
	$(CC) -o vuln64 main.c -O0 -fno-stack-protector -no-pie

clean:
	rm -f vuln32 vuln64 payload32 payload64 main32.o main64.o main.o