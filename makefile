www: content/* template/* FORCE
	cp -r static www/
	cp template/index.htm www/
	cp template/.htaccess www/
	./generate_pages.sh
	cp html/* www/
	touch ./www/.update

clean:
	rm -rf www/*.htm
	rm -rf www/static/

publish: www renameVirtualLink

renameVirtualLink:
	sed -i -- 's/\.htm//g' 	www/*.htm

FORCE: