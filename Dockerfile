FROM ghcr.io/radiorabe/ubi9-minimal:0.11.2

RUN    microdnf install -y \
         grafana \
         grafana-pcp \
    && grafana cli plugins install alexanderzobnin-zabbix-app \
    && microdnf clean all \
    && mkdir /usr/share/grafana/data \
    && chown grafana:grafana /usr/share/grafana/data

USER grafana
VOLUME /usr/share/grafana/data
WORKDIR /usr/share/grafana
CMD ["grafana", "server"]
