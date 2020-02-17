FROM alpine:latest as cli53

ENV GOPATH /go
ENV GO15VENDOREXPERIMENT 1

RUN apk add --no-cache \
      git \
      go \
      make;\
    go get github.com/barnybug/cli53; \
    cd $GOPATH/src/github.com/barnybug/cli53; \
    make install;

FROM alpine:latest

LABEL maintainer="Meik Minks <mminks@inoxio.de>"

COPY --from=cli53 /go/bin/cli53 /usr/local/bin/cli53

ENTRYPOINT ["/usr/local/bin/cli53"]

CMD ["-v"]
