# docker-mesos-dns

[Mesos-DNS](https://github.com/mesosphere/mesos-dns) Docker container

Modified for follow: [http://mesosphere.github.io/mesos-dns/docs/tutorial-gce.html](http://mesosphere.github.io/mesos-dns/docs/tutorial-gce.html)

## quick start

```
docker run -it \
    -e ZK_URI=_YOUR_ZOOKEEPER_URI_ \
    -e RESOLVERS='"YOUR_DNS_ADDRESS", "ANOTHER_OPTIONAL_DNS_ADDRESS"' \
    -p 53:53/udp \
    nickpoorman/docker-mesos-dns
```

## example

```
docker run -it \
    -e ZK_URI=zk://10.0.223.77:2181,10.0.35.194:2181,10.0.225.211:2181/mesos \
    -e RESOLVERS='"169.254.169.254", "10.0.0.1"' \
    -p 53:53/udp \
    nickpoorman/docker-mesos-dns
```

Make sure to follow the rest of the directions here: [http://mesosphere.github.io/mesos-dns/docs/tutorial-gce.html](http://mesosphere.github.io/mesos-dns/docs/tutorial-gce.html)

## Docs:
[mesos-dns](http://mesosphere.github.io/mesos-dns/docs/naming.html)
