FROM debian:bookworm-slim

ARG VERSION=0.5.2

RUN apt-get update && apt-get install -y \
    build-essential curl xvfb \
    make automake g++ \
    libpoppler-glib-dev poppler-utils libwxgtk3.2-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

RUN curl -L https://github.com/vslavik/diff-pdf/releases/download/v$VERSION/diff-pdf-$VERSION.tar.gz -o diff-pdf-$VERSION.tar.gz && \
    tar zxf diff-pdf-$VERSION.tar.gz && \
    cd diff-pdf-$VERSION && \
    ./bootstrap && \
    ./configure && \
    make && \
    make install && \
    rm -rf diff-pdf-$VERSION.tar.gz diff-pdf-$VERSION

RUN mkdir /workdir
WORKDIR /workdir

ENTRYPOINT [ "xvfb-run", "-a", "diff-pdf" ]
