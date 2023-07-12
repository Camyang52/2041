#!/bin/dash

rm -rf .pigs
./pigs-init
echo line 1 > a
./pigs-add a b
echo line 2 > b
./pigs-add a b
./pigs-commit -m 'first commit'
./pigs-status
echo line3 > c
./pigs-add b
./pigs-commit -m 'Change in b'
./pigs-status