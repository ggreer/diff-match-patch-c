libdmp: src/*.c src/*.h
	$(CC) -o libdmpc.1.dylib -g -Wall -std=c99 -Isrc src/*.c -dynamiclib

clean:
	/bin/rm -rf src/*.o *.dSYM *.dylib
	cd test && make clean

test: ALWAYS
	cd test && make && ./dmp_test

ALWAYS: