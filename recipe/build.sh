#!/bin/bash
mkdir build
cd build
cmake -D Boost_NO_BOOST_CMAKE=ON -D Python_ADDITIONAL_VERSIONS=${PY_VER} -D PYTHON_INCLUDE_DIR=${PREFIX}/include/python${PY_VER}m -D PYTHON_LIBRARY=${PREFIX}/lib/libpython${PY_VER}m${SHLIB_EXT} -D CMAKE_INSTALL_PREFIX=${PREFIX} ${CMAKE_ARGS} ..
make
cp -r python/atomicrex ${PREFIX}/lib/python${PY_VER}/site-packages/atomicrex/
mkdir -p ${PREFIX}/bin
cp atomicrex ${PREFIX}/bin
