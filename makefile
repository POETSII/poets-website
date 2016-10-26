build: html

publish: html renameVirtualLink

html: markdown/* template/template.htm
	./md2html.sh

clean:
	rm -rf html/*.htm

renameVirtualLink:
	sed -i -- 's/\.htm//g' 	html/*.htm
