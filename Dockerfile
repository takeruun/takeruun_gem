FROM ruby:3.1.2

RUN apt-get update

WORKDIR /takeruun_gem

COPY . /takeruun_gem