#!/bin/bash

/etc/fluentd-scripts/file-config.sh
/etc/fluentd-scripts/le-config.sh
exec fluentd -c /etc/fluentd-conf/fluentd.conf
