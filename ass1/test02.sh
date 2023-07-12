#!/bin/dash

rm -rf .pigs
./pigs-init
echo line1 > pigs-ab
echo line2 > comp2041
./pigs-add pigs-ab
./pigs-add comp2041
./pigs-commit -m 'Commit a pig'
./pigs-show 0:pigs-ab
./pigs-show 1:pigs-ab
echo line3 > _comp2041
./pigs-add _comp2041
./pigs-status