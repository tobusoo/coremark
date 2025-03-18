#!/bin/bash

TOOLCHAIN=/opt/spacemit-toolchain-linux-glibc-x86_64-v1.0.5/bin/
OBJDUMP=llvm-objdump

make XCFLAGS="-march=rv64gc_zicond"
$TOOLCHAIN$OBJDUMP --disassemble-all --disassemble-zeroes --section=.text --section=.text.startup --section=.text.init --section=.data coremark.exe > coremark.exe.dump