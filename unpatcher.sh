#!/bin/sh

ROM_TREE=$PWD

# Clean up
cd $ROM_TREE/bionic
git clean -f -d && git reset --hard
cd $ROM_TREE/build
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/opt/telephony
git clean -f -d && git reset --hard

cd $ROM_TREE
