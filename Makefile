# compiled from http://mxe.cc/
MXE_ROOT=$(HOME)/mxe

GCC=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-gcc
CXX=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-g++
PKG_CONFIG=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-pkg-config

CFLAGS=$(shell $(PKG_CONFIG) --cflags librsvg-2.0 cairo)
CXXFLAGS=$(CFLAGS)

LDFLAGS=$(shell $(PKG_CONFIG) --libs librsvg-2.0 cairo) -static

all: test
main: main.cpp Makefile
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $<
test: main
	wine ./main
clean:
	$(RM) main
