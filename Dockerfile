FROM ubuntu:14.04
MAINTAINER 9ide0n "denis.fomichev2017@yandex.ru"
ENV REFRESHED_AT 2015-12-27
ENV RUBY_VERSION ruby-2.4.1
RUN apt-get update -yqq
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN  apt-get install -yqq curl \
 && /bin/bash -l -c 'curl -sSL https://get.rvm.io | bash -s stable \
 && source /etc/profile.d/rvm.sh \
 && echo "source /etc/profile.d/rvm.sh " >> ~/.bashrc \
 && rvm install $RUBY_VERSION'
 #  \
 # && apt-get purge -yqq --auto-remove curl patch gawk g++ gcc make libc6-dev patch zlib1g-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgmp-dev \
 # libgdbm-dev libncurses5-dev automake libtool bison pkg-config libffi-dev libgmp-dev libreadline6-dev libssl-dev \
 # && rm -rf /var/lib/apt/lists/*
