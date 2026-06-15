FROM ghcr.io/radiorabe/ubi9-minimal:0.11.4@sha256:9d9f4695ed31b1856b258a1081abd15a99e1e62a7935b421a3c2e46bbdf62652

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
