FROM ubuntu:12.04
RUN apt-get update -qq
RUN apt-get install -y wget python sudo
RUN wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN apt-get install -y python-dev git postgresql-client libpq-dev libevent-dev libmemcached-dev libxml2-dev libxslt-dev python-dev lib32z1-dev
RUN wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
RUN mkdir -p /root/.ssh
ENV HOME /root

ADD requirements.txt /root/requirements.txt
RUN pip install --allow-unverified pyDes --allow-unverified bzr --allow-external pyDes --allow-external bzr -r /root/requirements.txt
