watch:
	hugo server --watch

build:
	hugo -d docs
	cp -fv etc/CNAME docs