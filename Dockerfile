FROM nginx:latest
RUN apt-get update && apt-get -y install python3-docutils
ADD index.rst template.raw web/ /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html/
RUN rst2html --template=template.raw < index.rst > index.html


