libdmp: src/*.c src/*.h
#	$(CC) -o libdmpc.1.dylib -g -Wall -std=c99 -Isrc src/*.c -dynamiclib
	$(CC) -c -fPIC -g -Wall -std=c99 -Isrc src/*.c
#	$(CC) -shared -o libdmpc.so *.o
	ar rcs libdmpc.a *.o

clean:
	/bin/rm -rf src/*.o *.dSYM *.dylib *.o *.so
	cd test && make clean

test: ALWAYS
	cd test && make && ./dmp_test

ALWAYS: