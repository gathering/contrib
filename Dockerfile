FROM nginx:latest
RUN apt-get update && apt-get -y install python3-docutils make
ADD Makefile index.rst template.raw web/ /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html/
RUN make


