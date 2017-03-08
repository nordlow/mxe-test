# compiled from from http://mxe.cc/
MXE_ROOT=$(HOME)/mxe

GCC=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-gcc
CXX=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-g++
PKG_CONFIG=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-pkg-config

CFLAGS_LIBRSVG=$(shell $(PKG_CONFIG) --cflags librsvg-2.0)
LIBS_LIBRSVG=$(shell $(PKG_CONFIG) --libs librsvg-2.0)

CFLAGS=$(CFLAGS_LIBRSVG)
CXXFLAGS=$(CFLAGS)

LDFLAGS=$(LIBS_LIBRSVG) -static

all: test
main: main.cpp Makefile
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $<
test: main
	wine ./main
