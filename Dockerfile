FROM ubuntu:20.04

RUN apt update

RUN apt install -y language-pack-ja-base language-pack-ja locales
RUN locale-gen ja_JP.UTF-8

RUN apt install -y build-essential zlib1g-dev
# jekyllm webrickのために ruby2.7を使う
RUN apt install -y ruby2.7 ruby2.7-dev
RUN apt install -y rubygems
RUN gem install jekyll bundler

EXPOSE 5555