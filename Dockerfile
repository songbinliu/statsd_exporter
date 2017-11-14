FROM        quay.io/prometheus/busybox:latest
MAINTAINER  The Prometheus Authors <prometheus-developers@googlegroups.com>

COPY statsd_exporter.linux /bin/statsd_exporter
RUN mkdir /etc/export_statsd/
COPY ./conf/mapping.conf /etc/export_statsd/


EXPOSE      9102 9125 9125/udp
ENTRYPOINT  [ "/bin/statsd_exporter" ]
CMD ["-statsd.mapping-config", "/etc/export_statsd/mapping.conf"]
