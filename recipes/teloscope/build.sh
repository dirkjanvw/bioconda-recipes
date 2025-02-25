#!/bin/sh
set -xe
export LIBRARY_PATH="${PREFIX}/lib:$LIBRARY_PATH"
export CXXFLAGS="-g -Wall -I$PREFIX/include -O3  -I$SRC_DIR/include -I$SRC_DIR/include/zlib -std=gnu++17 -lstdc++"
make -j ${CPU_COUNT} CXX=$CXX
mkdir -p $PREFIX/bin/
cp build/bin/teloscope $PREFIX/bin/
chmod +x $PREFIX/bin/teloscope
