#!/bin/bash
# 

machine=$(uname -sm | tr ' ' -)
echo "This is the make script which builds the tarball on $machine"

mkdir -p build
echo $machine > build/somefile

mkdir -p dist
TARBALL=testball-$machine.tar.bz2
tar cvjf dist/$TARBALL build

