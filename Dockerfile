FROM frolvlad/alpine-glibc AS build

WORKDIR /root

RUN apk update \
    && apk --no-cache add \
        bash \
        gcc \
        make \
        libc-dev \
        cairo-dev \
        poppler-dev

RUN \
    wget -O - https://github.com/dawbarton/pdf2svg/archive/v0.2.3.tar.gz | tar xzv && \
    cd pdf2svg-0.2.3 && \
    ./configure && \
    make && \
    make install



FROM frolvlad/alpine-glibc AS runtime

# Must set OSTYPE manually for Alpine Linux
ARG OSTYPE="linux-musl"

RUN apk update && \
    apk --no-cache add \
        perl \
        wget \
        cairo-gobject \
        poppler-glib \
        xz \
        make

WORKDIR /root

RUN wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh

COPY --from=build /usr/local/bin/pdf2svg /usr/local/bin
RUN ln -s /root/bin/* /usr/local/bin
RUN /root/.TinyTeX/bin/*/tlmgr path add

RUN tlmgr install colortbl moderncv preprint fontawesome5 pgf multirow arydshln xpatch
RUN tlmgr install $(tlmgr info --data name | grep 'babel-' | tr '\n' ' ')

WORKDIR /github/workspace
ENTRYPOINT make
