FROM ruby:alpine3.14

RUN gem install rspec -v 3.10.0
RUN gem install coderay -v 1.1.3

WORKDIR /app