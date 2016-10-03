FROM build-x265:deps

RUN mkdir /output

VOLUME /output

ENV CLONE_URL https://bitbucket.org/multicoreware/x265

ENTRYPOINT hg clone $CLONE_URL && \
    cd /x265/build/linux && \
    cmake -G "Unix Makefiles" ../../source && \
    make && \
    cp -p x265 /output/
