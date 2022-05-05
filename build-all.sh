#!/bin/bash
apt install -y parallel
find . -type f -name 'build.sh' | parallel dirname | parallel -j 1 "cd {}; ./build.sh; cd -"
