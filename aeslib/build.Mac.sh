#! /bin/sh
gcc -Wall -g -c -O3 -arch i386 -DTRACE_KAT_MCT -DINTERMEDIATE_VALUE_KAT -o rijndael-api-fst.o rijndael-api-fst.c
gcc -Wall -g -c -O3 -arch i386 -DTRACE_KAT_MCT -DINTERMEDIATE_VALUE_KAT -o rijndael-alg-fst.o rijndael-alg-fst.c
gcc -o aes.dylib -dynamiclib -arch i386 rijndael-alg-fst.o rijndael-api-fst.o
sudo cp aes.dylib /usr/local/lib/
