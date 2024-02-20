FROM debian:bullseye

RUN apt update && apt install -y build-essential postgresql postgresql-contrib \
	postgresql-server-dev-13 libbsd-dev lua5.3 liblua5.3-dev \
	mercurial bmake lsb-release imagemagick sassc

WORKDIR /root

COPY 2* .
RUN ./2-init-db
COPY 3* .
COPY core core
RUN ./3-install-core
