FROM ruby:latest AS base
WORKDIR /app
COPY . /app
CMD [ "ruby", "-w", "hello.rb" ]