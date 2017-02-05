FROM centurylink/ca-certs
MAINTAINER Albin Gilles <gilles.albin@gmail.com>
ENV REFRESHED_AT 2017-02-03

EXPOSE 80 443

ENV CADDYPATH /data
VOLUME /data

COPY build/caddy /caddy

ENTRYPOINT ["/caddy"]
CMD ["-ca", "https://acme-staging.api.letsencrypt.org/directory"]