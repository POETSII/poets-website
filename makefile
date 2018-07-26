www: content/* template/* FORCE
	@ cp -r static www/
	@ cp template/index.htm www/
	@ cp template/.htaccess www/
	@ ./generate_pages.sh
	# @ cp html/* www/
	@ touch ./www/.update

clean:
	@ rm -rf www/*.htm
	@ rm -rf www/static/

publish: www renameVirtualLink

renameVirtualLink:
	@ sed -i -- 's/about\.htm/about/g'                www/*.htm
	@ sed -i -- 's/partners\.htm/partners/g'          www/*.htm
	@ sed -i -- 's/research\.htm/research/g'          www/*.htm
	@ sed -i -- 's/news\.htm/news/g'                  www/*.htm
	@ sed -i -- 's/publications\.htm/publications/g'  www/*.htm
	@ sed -i -- 's/downloads\.htm/downloads/g'        www/*.htm
	@ sed -i -- 's/contact\.htm/contact/g'            www/*.htm
	@ sed -i -- 's/workshop2018\.htm/workshop2018/g'  www/*.htm

FORCE: