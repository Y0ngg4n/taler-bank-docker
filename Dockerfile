
FROM	debian:latest
USER	root
RUN	mkdir -p /app
WORKDIR	/app
RUN	apt-get update && apt-get install -y \
	make \
	git
RUN	git clone https://git.taler.net/libeufin
WORKDIR	/app/libeufin
RUN	./bootstrap
RUN	./configure --prefix=$PREFIX
RUN	make install
