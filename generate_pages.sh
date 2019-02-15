#!/bin/bash

# uses pandoc to generate html from content files

TEMPLATE=template/template.htm

SECTIONS=$(cd content && /bin/ls -1 *.md | sed 's/.md//g')

for section in $SECTIONS
do
	echo "Generating $section ..."
	MD_FILE="content/$section.md"
	HTML_FILE="www/$section/index.htm"
	mkdir -p www/$section/
	pandoc $MD_FILE --template $TEMPLATE | dos2unix > $HTML_FILE
done

# Use strict mode to keep html tags:
# pandoc $f --template $TEMPLATE -f markdown_strict | dos2unix > $f2
