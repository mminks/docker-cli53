FROM debian:stable-slim

LABEL maintainer="Meik Minks <mminks@inoxio.de>"

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install --no-install-recommends -y \
      curl \
      jq \
      ca-certificates \
    && curl -s -L $(curl -s https://api.github.com/repos/barnybug/cli53/releases/latest | jq -r '.assets[].browser_download_url' | grep cli53-linux-amd64) -o /usr/local/bin/cli53 \
    && chmod +x /usr/local/bin/cli53 \
    && apt-get remove --purge -y \
      curl \
      jq \
    && apt-get autoremove -y --purge \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/local/bin/cli53"]

CMD ["-v"]
