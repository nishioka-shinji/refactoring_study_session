FROM ruby:alpine3.14

WORKDIR /app

RUN gem install bundler
ADD Gemfile /Gemfile
ADD Gemfile.lock /Gemfile.lock

RUN bundle install
