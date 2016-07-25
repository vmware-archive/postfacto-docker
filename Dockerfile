FROM ruby
MAINTAINER labs-sydney

RUN apt-get update && apt-get install -y nodejs postgresql

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - ; \
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list; \
    apt-get update; \
    apt-get install -y --force-yes google-chrome-stable xvfb;

USER postgres 
RUN /etc/init.d/postgresql start && createuser --superuser root
USER root

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out

