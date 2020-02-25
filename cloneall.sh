#!/bin/bash

function clone()
{
    for i in "$@"; do
        git clone https://github.com/haigangx/$i;
    done
}

clone learning leetcode learning-cpp learning-linux
