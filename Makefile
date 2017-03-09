# compiled from http://mxe.cc/
MXE_ROOT=$(HOME)/mxe

GCC=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-gcc
CXX=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-g++
PKG_CONFIG=$(MXE_ROOT)/usr/bin/i686-w64-mingw32.static-pkg-config

CFLAGS=-Wall -Wno-deprecated-declarations -std=c++17 $(shell $(PKG_CONFIG) --cflags librsvg-2.0 cairo Qt5Core Qt5Widgets)
CXXFLAGS=$(CFLAGS)

LDFLAGS=-static
LIBS=$(shell $(PKG_CONFIG) --libs librsvg-2.0 cairo Qt5Core Qt5Widgets)

all: test
main: main.cpp Makefile
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $< $(LIBS) -o $@
test: main
	wine ./main
clean:
	$(RM) main
