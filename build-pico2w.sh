#!/bin/bash
export PICO_SDK_PATH=$(realpath ../pico_sdk)

cmake -B build-pico2 -DDEBUG_ON_PICO=1 -DPICO_BOARD=pico2 -DPICO_PLATFORM=rp2350
cmake --build build-pico2
