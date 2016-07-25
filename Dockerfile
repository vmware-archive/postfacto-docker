FROM ruby
MAINTAINER labs-sydney

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out
