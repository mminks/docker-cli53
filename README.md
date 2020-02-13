# Dockerized cli53

This is an dockerized and Debian slim based version of barnybug's `cli53 - Command line tool for Amazon Route 53`. Please check [https://github.com/barnybug/cli53](https://github.com/barnybug/cli53) on how to use this.

This image uses the latest release of `cli53`.

This image is as minimal as possible.

My use case is to use it in RancherOS, where everything is a container. To simulate "normal" usage, you can do something ike this:

```
echo 'docker run --rm mminks/cli53 $@' > /usr/local/bin/cli53

chmod +x /usr/local/bin/cli53
```
