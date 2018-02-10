index.html: index.rst template.raw
	rst2html --template=template.raw < index.rst > index.html

build: index.html
	docker build -t thegathering/contrib:latest .

push:
	docker push thegathering/contrib:latest
