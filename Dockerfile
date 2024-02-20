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

COPY 4* .
COPY moonbridge moonbridge
RUN ./4-install-moonbridge

COPY 5* .
COPY webmcp webmcp
RUN ./5-install-webmcp

COPY 6* .
COPY frontend frontend
RUN ./6-install-frontend

COPY lf_update.sh /opt/liquid_feedback_core
RUN /opt/liquid_feedback_core/lf_update.sh once

COPY run.sh /opt/liquid_feedback_frontend

CMD /opt/liquid_feedback_frontend/run.sh
