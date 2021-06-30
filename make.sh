#!/bin/bash
# 

machine=$(uname -sm | tr ' ' -)
echo "This is the make script which builds the tarball on $machine"

mkdir -p build
echo $machine > build/somefile

for tool in "cmake --version" "gcc --version" "g++ --version" "swig -version"; do 
	echo "======================================================="
	echo "Checking for $tool"
	$tool 
done

mkdir -p dist
TARBALL=testball-$machine.tar.bz2
tar cvjf dist/$TARBALL build

