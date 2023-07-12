#!/bin/dash
rm -rf .pigs
./pigs-init
echo line 1 > a
echo line 2 > b
echo line 3 > c
echo line 4 > d
./pigs-add a b c
./pigs-commit -m 'first commit'
./pigs-rm --force a
echo line 5 > b
./pigs-add b d
./pigs-status