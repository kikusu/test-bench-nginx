FROM debian:9.9

RUN apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests nginx libnginx-mod-http-echo \
    && apt-get purge -y --auto-remove

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
