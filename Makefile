# compiled from from http://mxe.cc/
MXE_ROOT=~/mxe

GCC=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-gcc
CXX=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-g++

all: test
main: main.cpp Makefile
	$(CXX) -o $@ $<
test: main
	wine ./main
