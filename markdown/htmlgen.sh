#!/bin/bash
for f in *.md;
do
	echo $f;
	len=`expr length $f`
	len=`expr $len - 3`
	markdown $f > ${f:0:$len}.html
done
mv index.html ../
if [ -a *.html ]
then
	mv *.html ../articles
fi
