#!/bin/dash

./pigs-init
touch a
./pigs-add a
./pigs-commit -m "commit a"
rm a
cat a
./pigs-add a
./pigs-commit -m "removing a"
./pigs-add a
touch b
./pigs-add b
./pigs-commit "add b"
echo "changed" > b
./pigs-add b
rm b
./pigs-rm b
./pigs-commit -m "repo is empty now"
./pigs-show :a
./pigs-show :b