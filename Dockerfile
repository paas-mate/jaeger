FROM ttbb/base

WORKDIR /opt/sh

ARG TARGETARCH

RUN wget https://github.com/jaegertracing/jaeger/releases/download/v1.37.0/jaeger-1.37.0-linux-$TARGETARCH.tar.gz  && \
    mkdir -p jaeger && \
    tar -xf jaeger-1.37.0-linux-$TARGETARCH.tar.gz -C jaeger --strip-components 1 && \
    rm -rf jaeger-1.37.0-linux-$TARGETARCH.tar.gz

ENV JAEGER_HOME /opt/sh/jaeger

WORKDIR /opt/sh/jaeger

ENTRYPOINT ["/opt/sh/jaeger/jaeger-all-in-one"]
