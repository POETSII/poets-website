publish: content/* template/*
	@ mkdir -p www/static/
	@ cp -r static www
	@ cp template/index.htm www/
	@ ./generate_pages.sh

clean:
	@ rm -rf www
