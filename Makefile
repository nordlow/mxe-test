GCC=~/mxe/usr/bin/i686-w64-mingw32.static-gcc
CXX=~/mxe/usr/bin/i686-w64-mingw32.static-g++

all: test
main: main.cpp
	$(CXX) -o $@ $<
test:
	wine ./main
