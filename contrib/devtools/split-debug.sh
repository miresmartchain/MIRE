#!/bin/sh

if [ $# -ne 3 ];
    then echo "usage: $0 <input> <stripped-binary> <debug-binary>"
fi

<<<<<<< HEAD
/usr/bin/objcopy --enable-deterministic-archives -p --only-keep-debug $1 $3
/usr/bin/objcopy --enable-deterministic-archives -p --strip-debug $1 $2
/usr/bin/strip --enable-deterministic-archives -p -s $2
/usr/bin/objcopy --enable-deterministic-archives -p --add-gnu-debuglink=$3 $2
=======
/usr/bin/i686-w64-mingw32-objcopy --enable-deterministic-archives -p --only-keep-debug $1 $3
/usr/bin/i686-w64-mingw32-objcopy --enable-deterministic-archives -p --strip-debug $1 $2
/usr/bin/i686-w64-mingw32-strip --enable-deterministic-archives -p -s $2
/usr/bin/i686-w64-mingw32-objcopy --enable-deterministic-archives -p --add-gnu-debuglink=$3 $2
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
