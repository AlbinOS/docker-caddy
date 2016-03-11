FROM centurylink/ca-certs
MAINTAINER Albin Gilles <gilles.albin@gopex.be>
ENV REFRESHED_AT 2016-03-11

COPY ./dockerfiles/deploy/. /.
EXPOSE 80 443 2015

CMD ["/caddy"]
