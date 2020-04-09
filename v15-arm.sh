#!/bin/bash
XROOT=/opt/android/v15-arm

export CC=arm-linux-androideabi-gcc
export CXX=arm-linux-androideabi-g++

export PKG_CONFIG_PATH=$XROOT:/tmp/v15/lib/pkgconfig:/tmp/v15/share/pkgconfig
export PKG_CONFIG_DIR=
export PKG_CONFIG_LIBDIR=$XROOT/lib/pkgconfig:$XROOT/share/pkgconfig
export PKG_CONFIG_SYSROOT_DIR=$XROOT

export "PATH=$XROOT/bin:$PATH"
export "LDFLAGS=-pie -Wl,-z,noexecstack -L$XROOT/lib -L/tmp/v15/lib"
export "CFLAGS=-Wno-psabi -march=armv7-a -mfloat-abi=softfp -mfpu=vfp -ffunction-sections -funwind-tables -fstack-protector -fno-short-enums -DANDROID -Wa,--noexecstack -fno-builtin-memmove -O2 -Os -fno-omit-frame-pointer -fno-strict-aliasing -finline-limit=64 -mthumb -Wall -Wextra -D_REENTRANT -fPIC -I$XROOT/include -I$XROOT/include/libxml2 -I/tmp/v15/include/lttoolbox-3.3 -I/tmp/v15/include/apertium-3.4"
export "CXXFLAGS=-std=gnu++0x -fexceptions -frtti $CFLAGS"
export "LIBS=-lglob"
export LIBXML_CFLAGS= "LIBXML_LIBS=-lxml2"
export LTTOOLBOX_CFLAGS= LTTOOLBOX_LIBS=
export APERTIUM_CFLAGS= APERTIUM_LIBS=
"$@"
