#!/bin/dash
./pigs-init
./pigs-branch a
./pigs-branch b
./pigs-branch
./pigs-branch -d a
./pigs-branch -d b
./pigs-branch -d master
./pigs-branch
touch a
./pigs-branch branchA
./pigs-add a
./pigs-commit -m "a"
touch b
./pigs-checkout branchA
touch c
echo "b" > b
./pigs-add c
./pigs-commit -m "c"
./pigs-checkout master
ls
./pigs-branch -d branchA
./pigs-branch branchB
./pigs-checkout branchB
touch d
./pigs-add d
./pigs-commit -m "d"
echo "change" > d
./pigs-checkout master
./pigs-commit -a -m "commit d"
./pigs-checkout master