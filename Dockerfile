FROM ghcr.io/radiorabe/ubi9-minimal:0.6.5

RUN    microdnf install -y \
         grafana \
         grafana-pcp \
    && grafana-cli plugins install alexanderzobnin-zabbix-app \
    && microdnf clean all

USER grafana
CMD ["grafana-server"]