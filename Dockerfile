FROM ubuntu:14.04
RUN apt-get update -qq && apt-get install -y wget python
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN apt-get install -y python-dev git postgresql-client libpq-dev libevent-dev libmemcached-dev libxml2-dev libxslt-dev python-dev lib32z1-dev
RUN wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
