FROM ruby
MAINTAINER labs-sydney

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y postgresql

RUN gem install rake -v 11.2.2
RUN gem install concurrent-ruby -v 1.0.2
RUN gem install i18n -v 0.7.0
RUN gem install minitest -v 5.9.0
RUN gem install thread_safe -v 0.3.5
RUN gem install builder -v 3.2.2
RUN gem install erubis -v 2.7.0
RUN gem install mini_portile2 -v 2.1.0
RUN gem install pkg-config -v 1.1.7
RUN gem install rack -v 2.0.1
RUN gem install nio4r -v 1.2.1
RUN gem install websocket-extensions -v 0.1.2
RUN gem install mime-types-data -v 3.2016.0521
RUN gem install arel -v 7.0.0
RUN gem install addressable -v 2.4.0
RUN gem install byebug -v 9.0.5
RUN gem install coffee-script-source -v 1.10.0
RUN gem install execjs -v 2.7.0
RUN gem install method_source -v 0.8.2
RUN gem install thor -v 0.19.1
RUN gem install debug_inspector -v 0.0.2
RUN gem install diff-lcs -v 1.2.5
RUN gem install ffi -v 1.9.14
RUN gem install multi_json -v 1.12.1
RUN gem install rb-fsevent -v 0.9.7
RUN gem install pg -v 0.18.4
RUN gem install puma -v 3.4.0
RUN gem install rspec-support -v 3.5.0
RUN gem install sass -v 3.4.22
RUN gem install tilt -v 2.0.5
RUN gem install spring -v 1.7.2
RUN gem install turbolinks-source -v 5.0.0
RUN gem install tzinfo -v 1.2.2
RUN gem install nokogiri -v 1.6.8
RUN gem install rack-test -v 0.6.3
RUN gem install sprockets -v 3.6.3
RUN gem install websocket-driver -v 0.6.4
RUN gem install mime-types -v 3.1
RUN gem install coffee-script -v 2.4.1
RUN gem install uglifier -v 3.0.0
RUN gem install rb-inotify -v 0.9.7
RUN gem install rspec-core -v 3.5.0
RUN gem install rspec-expectations -v 3.5.0
RUN gem install rspec-mocks -v 3.5.0
RUN gem install turbolinks -v 5.0.0
RUN gem install activesupport -v 5.0.0
RUN gem install loofah -v 2.0.3
RUN gem install xpath -v 2.0.0
RUN gem install mail -v 2.6.4
RUN gem install listen -v 3.0.8
RUN gem install rails-dom-testing -v 2.0.1
RUN gem install globalid -v 0.3.6
RUN gem install activemodel -v 5.0.0
RUN gem install jbuilder -v 2.5.0
RUN gem install rails-html-sanitizer -v 1.0.3
RUN gem install capybara -v 2.7.1
RUN gem install spring-watcher-listen -v 2.0.0
RUN gem install activejob -v 5.0.0
RUN gem install activerecord -v 5.0.0
RUN gem install actionview -v 5.0.0
RUN gem install actionpack -v 5.0.0
RUN gem install actioncable -v 5.0.0
RUN gem install actionmailer -v 5.0.0
RUN gem install railties -v 5.0.0
RUN gem install sprockets-rails -v 3.1.1
RUN gem install coffee-rails -v 4.2.1
RUN gem install jquery-rails -v 4.1.1
RUN gem install rspec-rails -v 3.5.0
RUN gem install web-console -v 3.3.1
RUN gem install rails -v 5.0.0
RUN gem install sass-rails -v 5.0.5

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out
