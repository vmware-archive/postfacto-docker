FROM ruby
MAINTAINER labs-sydney

RUN apt-get update && apt-get install -y nodejs postgresql supervisor

USER postgres

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out

CMD ["/usr/bin/supervisord"]
