FROM ruby
MAINTAINER labs-sydney

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y postgresql

RUN gem install rake 11.2.2
RUN gem install concurrent-ruby 1.0.2
RUN gem install i18n 0.7.0
RUN gem install minitest 5.9.0
RUN gem install thread_safe 0.3.5
RUN gem install builder 3.2.2
RUN gem install erubis 2.7.0
RUN gem install mini_portile2 2.1.0
RUN gem install pkg-config 1.1.7
RUN gem install rack 2.0.1
RUN gem install nio4r 1.2.1 with native extensions
RUN gem install websocket-extensions 0.1.2
RUN gem install mime-types-data 3.2016.0521
RUN gem install arel 7.0.0
RUN gem install addressable 2.4.0
RUN gem install byebug 9.0.5 with native extensions
RUN gem install coffee-script-source 1.10.0
RUN gem install execjs 2.7.0
RUN gem install method_source 0.8.2
RUN gem install thor 0.19.1
RUN gem install debug_inspector 0.0.2 with native extensions
RUN gem install diff-lcs 1.2.5
RUN gem install ffi 1.9.14 with native extensions
RUN gem install multi_json 1.12.1
RUN gem install rb-fsevent 0.9.7
RUN gem install pg 0.18.4 with native extensions
RUN gem install puma 3.4.0 with native extensions
RUN gem install rspec-support 3.5.0
RUN gem install sass 3.4.22
RUN gem install tilt 2.0.5
RUN gem install spring 1.7.2
RUN gem install turbolinks-source 5.0.0
RUN gem install tzinfo 1.2.2
RUN gem install nokogiri 1.6.8 with native extensions
RUN gem install rack-test 0.6.3
RUN gem install sprockets 3.6.3
RUN gem install websocket-driver 0.6.4 with native extensions
RUN gem install mime-types 3.1
RUN gem install coffee-script 2.4.1
RUN gem install uglifier 3.0.0
RUN gem install rb-inotify 0.9.7
RUN gem install rspec-core 3.5.0
RUN gem install rspec-expectations 3.5.0
RUN gem install rspec-mocks 3.5.0
RUN gem install turbolinks 5.0.0
RUN gem install activesupport 5.0.0
RUN gem install loofah 2.0.3
RUN gem install xpath 2.0.0
RUN gem install mail 2.6.4
RUN gem install listen 3.0.8
RUN gem install rails-dom-testing 2.0.1
RUN gem install globalid 0.3.6
RUN gem install activemodel 5.0.0
RUN gem install jbuilder 2.5.0
RUN gem install rails-html-sanitizer 1.0.3
RUN gem install capybara 2.7.1
RUN gem install spring-watcher-listen 2.0.0
RUN gem install activejob 5.0.0
RUN gem install activerecord 5.0.0
RUN gem install actionview 5.0.0
RUN gem install actionpack 5.0.0
RUN gem install actioncable 5.0.0
RUN gem install actionmailer 5.0.0
RUN gem install railties 5.0.0
RUN gem install sprockets-rails 3.1.1
RUN gem install coffee-rails 4.2.1
RUN gem install jquery-rails 4.1.1
RUN gem install rspec-rails 3.5.0
RUN gem install web-console 3.3.1
RUN gem install rails 5.0.0
RUN gem install sass-rails 5.0.5

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out
