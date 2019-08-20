FROM ruby:2.6.3

MAINTAINER RainRush <dan3388a@gmail.com>

RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs vim postgis imagemagick && curl -o- -L https://yarnpkg.com/install.sh | bash

WORKDIR /hello_world
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD rails server -b 0.0.0.0