#!/bin/bash

/etc/fluentd-scripts/file-config.sh
/etc/fluentd-scripts/le-config.sh
fluentd -c /etc/fluentd-conf/fluentd.conf -p /etc/fluentd-plugins
