FROM amazonlinux:2.0.20190508

MAINTAINER patelsaheb29@gmail.com

RUN yum install pip gperf freetype-devel libxml2-devel git libtool make zip -y
RUN pip install lxml six

RUN cd /tmp
RUN git clone http://anongit.freedesktop.org/git/fontconfig
WORKDIR /fontconfig
RUN git checkout -b 2.12.4 refs/tags/2.12.4

RUN ./autogen.sh --enable-libxml2
RUN make
RUN make install
