FROM ruby
MAINTAINER labs-sydney

RUN apt-get update && apt-get install -y nodejs postgresql

RUN echo "UPDATE pg_database SET datistemplate=FALSE WHERE datname='template1';" > utf8.sql; \
    echo "DROP DATABASE template1;" >> utf8.sql; \
    echo "CREATE DATABASE template1 WITH owner=postgres template=template0 encoding='UTF8';" >> utf8.sql; \
    echo "UPDATE pg_database SET datistemplate=TRUE WHERE datname='template1';" >> utf8.sql

RUN service postgresql start; \
    export PGPASSWORD=postgres; \
    psql -U postgres -h localhost -a -f utf8.sql; \
    rm utf8.sql

USER postgres

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out

