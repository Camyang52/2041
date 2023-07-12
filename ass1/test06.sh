#!/bin/dash

rm -rf .pigs
./pigs-init
echo line 1 > a
echo line 2 > b
./pigs-add a b
./pigs-rm --force a
./pigs-commit -m "Commit 1"
echo line 1 > a
./pigs-status
echo line 3 > c
./pigs-rm  c
echo line 3 > a
./pigs-add a
./pigs-commit -m "Commit 2"