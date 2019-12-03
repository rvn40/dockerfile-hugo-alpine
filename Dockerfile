FROM alpine:3.10

RUN apk update --no-cache \
    && apk upgrade --no-cache \
    && cd /tmp \
    && wget https://github.com/gohugoio/hugo/releases/download/v0.60.0/hugo_0.60.0_Linux-64bit.tar.gz \
    && tar xvf hugo_0.60.0_Linux-64bit.tar.gz \
    && rm LICENSE README.md hugo_0.60.0_Linux-64bit.tar.gz \
    && mv hugo /usr/local/bin/

WORKDIR /site
CMD ["--help"]
