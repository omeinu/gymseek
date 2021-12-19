FROM ruby:2.5.1

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  nodejs\
  mysql-server\
  mysql-client

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs

WORKDIR /gymseek

COPY Gemfile /gymseek/Gemfile
COPY Gemfile.lock /gymseek/Gemfile.lock

RUN gem install bundler
RUN bundle install

RUN mkdir -p tmp/sockets
