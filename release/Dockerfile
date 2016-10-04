FROM teruya/build-x265:deps-release

RUN mkdir /output

VOLUME /output

ENV VERSION 2.1
ENV TAR_URL http://ftp.videolan.org/pub/videolan/x265/x265_$VERSION.tar.gz

ENTRYPOINT wget $TAR_URL && \
    tar xzvf x265_$VERSION.tar.gz && \
    cd /x265_$VERSION/build/linux && \
    cmake -G "Unix Makefiles" ../../source && \
    make && \
    cp -p x265 /output/ && \
    cp -p libx265.* /output/
