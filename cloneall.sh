#!/bin/bash

function clone()
{
    for i in "$@"; do
        git clone https://github.com/haigangx/$i;
    done
}

clone leetcode learning learning-cpp learning-linux awesome-tools awesome-me
