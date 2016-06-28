FROM fluent/fluentd:v0.12.26

USER root

ADD ./scripts /etc/fluentd-scripts
ADD ./fluentd.conf /etc/fluentd-conf/fluentd.conf

RUN apk add --update bash && rm -rf /var/cache/apk/* \
    && gem install fluent-plugin-logentries \
    && chmod +x /etc/fluentd-scripts/*.sh

CMD /etc/fluentd-scripts/start-agent.sh
