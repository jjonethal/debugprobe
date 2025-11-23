#!/bin/bash
mkdir build-pico2
cd build-pico2
export PICO_SDK_PATH=../../pico-sdk
cmake -DDEBUG_ON_PICO=1 -DPICO_BOARD=pico2 -DPICO_PLATFORM=rp2350 ../
cmake --build .
