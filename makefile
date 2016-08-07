build: html

publish: html renameVirtualLink

html: markdown/*
	./md2html.sh

clean:
	rm -rf html/*.htm

renameVirtualLink:
	sed -i -- 's/\.htm//g' 	html/*.htm
