#!/bin/dash


touch a b c

./pigs-add a b c
./pigs-commit -m "test"
./pigs-log
./pigs-show :a
./pigs-rm a b c
./pigs-status
./pigs-branch
./pigs-checkout "test"
./pigs-merge "test"

./pigs-init

./pigs-init

rm -rf .pigs

touch .pigs
./pigs-init