FROM alpine
ENV VERSION 0.11.0
ADD https://github.com/kelseyhightower/confd/releases/download/v$VERSION/confd-$VERSION-linux-amd64 /confd
RUN chmod +x /confd
entrypoint ["/confd"]
CMD ["-h"]
