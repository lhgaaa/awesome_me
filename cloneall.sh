#!/bin/bash

function clone()
{
    for i in "$@"; do
	if [ -e $i ]; then
		echo "skip $i";
		continue;
	else
        	git clone https://github.com/haigangx/$i;
		echo "clone $i finished!";
	fi
    done
}

clone learning-cpp learning-linux awesome-me leetcode awesome-tools learning haigangx.github.io linux-server-dev awesome-SE learning-English exercises Lexi books
