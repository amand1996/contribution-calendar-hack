#!/bin/bash
for i in {1..20}
do
	touch temp$i.txt
	git add -A
	a="Wed Jul "
	b=$i
	c=" 14:00 2016 +0530"
	export GIT_AUTHOR_DATE=$a$b$c
	export GIT_COMMITTER_DATE=$a$b$c
	git commit -am "hack the code"
	rm temp$i.txt
	export GIT_AUTHOR_DATE=$a$b$c
	export GIT_COMMITTER_DATE=$a$b$c
	git commit -am "hack the code"
done