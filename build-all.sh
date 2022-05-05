#!/bin/bash
apt install -y parallel
find . -type f -name 'build.sh' | parallel dirname | parallel "cd {}; ./build.sh; cd -"
