#!/bin/bash

# uses pandoc to generate html from content files

TEMPLATE=template/template.htm

MDFILES=content/*.md

for f in $MDFILES
do
	f2=${f/content/www}
	f2=${f2/md/htm}
  	echo "Generating $f2..."
	pandoc $f --template $TEMPLATE | dos2unix > $f2
 done

# Use strict mode to keep html tags:
# pandoc $f --template $TEMPLATE -f markdown_strict | dos2unix > $f2
