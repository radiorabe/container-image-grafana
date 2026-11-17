FROM ghcr.io/radiorabe/ubi9-minimal:0.12.1@sha256:9a3f83629f9dd656727266b28ceb962824a337c34dab911ff4f0fce75acea642

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
