#!/bin/bash

# Build the project

# Argument 1: remove the old build
# Argument 2: build type


# Remove the old build
if [ "$1" == "clean" ]; then
    rm -rf build
fi

# Create the build directory

mkdir -p build

if [ "$2" == "Debug" ]; then
    echo "Building in Debug mode"
    cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
else
    echo "Building in Release mode"
    cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
fi

cmake --build build




