#!/bin/bash

# uses pandoc to convert all md files in ./mardown to html files in ./html

TEMPLATE=template/template.htm

MDFILES=markdown/*.md

for f in $MDFILES
do
	f2=${f/markdown/html}
	f2=${f2/md/htm}
  	echo "Converting $f -> $f2..."
	pandoc $f --template $TEMPLATE -o $f2
 done
