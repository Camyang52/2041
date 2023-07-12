#!/bin/dash

rm -rf .pigs
echo line 1 > a
echo line 2 > b
./pigs-add a b
./pigs-init
./pigs-rm --force a b
./pigs-add a b
./pigs-commit -m 'first commit'
rm a b
./pigs-status
./pigs-rm --cached a b
echo line 3 > b
./pigs-init
./pigs-add b
./pigs-rm b