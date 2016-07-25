FROM ruby
MAINTAINER labs-sydney

RUN apt-get update && apt-get install -y nodejs postgresql

USER postgres

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out

