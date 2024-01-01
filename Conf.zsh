#! /usr/bin/env zsh
## vim:set ft=zsh ts=4 sw=4 et:
set -e; set -o pipefail; unsetopt NULL_GLOB
argv0=$0; argv0abs=${argv0:A}; argv0dir=${argv0abs:h}

# building on Fedora 37

prefix=$PWD/Install/neovim

cmake -S . -B build-fedora37 \
        -DPREFER_LUA=OFF \
        -DLUV_INCLUDE_DIR=/usr/include/luajit-2.1 \
        -DLUV_LIBRARY=/usr/lib64/luajit/2.1/luv.so \
        -DENABLE_LTO=FALSE \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=$prefix
