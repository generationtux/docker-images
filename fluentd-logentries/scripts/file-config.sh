#!/bin/bash

# Auto-generate Fluentd configuration for log files to watch.
# Configuration script from kubernetes/contrib logging example:
# https://github.com/kubernetes/contrib/tree/master/logging/fluentd-sidecar-gcp
# File paths modified for Logentries usage
# See license below:

# Copyright 2015 The Kubernetes Authors All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

mkdir -p /etc/fluentd-conf/files
if [ -z "$FILES_TO_COLLECT" ]; then
  exit 0
fi

for filepath in $LARAVEL_LOGS
do
  filename=$(basename $filepath)
  cat > "/etc/fluentd-conf/files/${filename}" << EndOfMessage
<source>
  type tail
  format multiline
  format_firstline /^\[(?<time>[^ ]+ [^ ]+)\] (?<env>[^ ]+)\.(?<level>[^ ]+)\: (?<message>.*)/
  format1 /(?<stack>.*)/
  path ${filepath}
  pos_file /etc/fluentd-conf/fluentd-${filename}.pos
  tag file.${filename}
  read_from_head true
  use_json true
</source>
EndOfMessage
done
