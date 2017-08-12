#!/bin/sh

# Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher
ACE=$PATCHER_PATH/ace

# Clean up first
cd $ROM_TREE/frameworks/opt/telephony
git clean -f -d && git reset --hard

cd $ROM_TREE

### ace patches
patch -d frameworks/opt/telephony				-p1 -s -N --no-backup-if-mismatch < $ACE/data_connection.patch
