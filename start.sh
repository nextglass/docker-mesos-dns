#!/bin/bash

ESCAPED_ZK_URI=$(echo $ZK_URI | sed -e 's/[]\/$*.^|[]/\\&/g')
sed -i.bak "s/ZK_URI/$ESCAPED_ZK_URI/" /go/src/mesos-dns/config.json
sed -i.bak "s/RESOLVERS/$RESOLVERS/" /go/src/mesos-dns/config.json
/go/src/mesos-dns/mesos-dns -config /go/src/mesos-dns/config.json -v=2
