#!/bin/bash

find `pwd` -name "*.cpp" -o -name "*.c" -o -name "*.cc" -o -name "*.h" > cscope.files
ctags -L cscope.files
cscope -b
