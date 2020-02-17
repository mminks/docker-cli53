# Dockerized cli53

This is a dockerized version of barnybug's `cli53 - Command line tool for Amazon Route 53`. Please check [https://github.com/barnybug/cli53](https://github.com/barnybug/cli53) on how to use this.

This image uses the latest release of `cli53`.

There are two versions available. One debian:slim based and on alpine:latest based version. Both are as minimal as possible.

My use case is to use it in RancherOS, where everything is a container. To simulate "normal" usage, you can do something ike this:

```
echo 'docker run --rm mminks/cli53 "$@"' > /usr/local/bin/cli53

chmod +x /usr/local/bin/cli53
```

## Supported tags and respective `Dockerfile` links

[alpine, latest](https://github.com/mminks/docker-cli53/blob/master/alpine/Dockerfile)

[debian](https://github.com/mminks/docker-cli53/blob/master/debian/Dockerfile)
