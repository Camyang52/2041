#!/bin/dash

./pigs-init
echo 1 > a
echo 2 > b
echo 3 > c
./pigs-add a b
./pigs-commit -m "commit 0"
echo hello > a
echo world > b
./pigs-add a
./pigs-commit -m "commit 1"
./pigs-show :a
./pigs-show :b
./pigs-show :c
./pigs-show 0:a
./pigs-add d
./pigs-log