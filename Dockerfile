FROM  quay.io/prometheus/busybox:latest
LABEL maintainer="The Prometheus Authors <prometheus-developers@googlegroups.com>"

ARG TARGETARCH
ARG TARGETOS
COPY .build/${TARGETOS}-${TARGETARCH}/collectd_exporter /bin/collectd_exporter

EXPOSE      9103
ENTRYPOINT  [ "/bin/collectd_exporter" ]
