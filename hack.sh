#!/bin/bash
for i in {1..15}
do
	touch temp$i.txt
	git add -A
	git commit -am "hack the code"
	rm temp$i.txt
	git commit -am "hack the code"
done