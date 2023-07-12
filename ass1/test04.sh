#!/bin/dash

rm -rf .pigs
./pigs-init
echo line 1 > a
echo line 2 > b
echo line 3 > c
./pigs-add a b c
./pigs-commit -a -m 'first commit'
./pigs-rm a b c d
./pigs-status
./pigs-rm a b c
./pigs-status
echo line 4 > d
./pigs-add d
./pigs-commit -m "Add d"
./pigs-status