FROM ruby
MAINTAINER labs-sydney

RUN apt-get update && apt-get install -y nodejs && apt-get install -y postgresql

USER postgres
RUN /etc/init.d/postgresql start && createuser --superuser root

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out
