FROM ruby
MAINTAINER labs-sydney

RUN apt-get update -qq && apt-get install -y postgresql libpq-dev nodejs

RUN service postgresql start

USER postgres

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out
