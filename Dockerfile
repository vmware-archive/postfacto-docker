FROM ruby
MAINTAINER labs-sydney

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y postgresql

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out
