# Simple TCP Proxy

Given the scenario:


```
                             10.0.1.0/24                10.0.2.0/24
  +-------------+   (VPN)   +------------+   (VPN)   +-----------------+
  | My computer | --------- |  Jump Box  |-----------| Internal Server |
  +-------------+   (SSH)   +------------+           +-----------------+
                             [Public IP]
```

If you need to access from your computer a service running on the **Internal Server**,
but the VPN/SSH only give you access to the **Jump Box** machine. The easiest way to do
it is using [socat](http://www.dest-unreach.org/socat/) to create a simple TCP proxy.

But sometimes install [socat](http://www.dest-unreach.org/socat/) can be annoying and
you need to remember the syntax.

This docker-image makes easier to use [socat](http://www.dest-unreach.org/socat/)
with the simple command: `docker run -d -p PORT:PORT robsonpeixoto/simple-tcp-proxy HOST PORT`
