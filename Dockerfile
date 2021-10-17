# Install base cuda
FROM nvidia/cuda:11.0.3-base-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive

# Basic Python compilation utilities
RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y checkinstall && \
    apt-get install -y libreadline-gplv2-dev && \
    apt-get install -y libncursesw5-dev && \
    apt-get install -y libssl-dev && \
    apt-get install -y libsqlite3-dev && \
    apt-get install -y tk-dev && \
    apt-get install -y libgdbm-dev && \
    apt-get install -y libc6-dev && \
    apt-get install -y libbz2-dev && \
    apt-get install -y zlib1g-dev && \
    apt-get install -y openssl && \
    apt-get install -y libffi-dev && \
    apt-get install -y python3-dev && \
    apt-get install -y python3-setuptools && \
    apt-get install -y wget && \
    apt-get install -y liblzma-dev

RUN mkdir /tmp/Python39

RUN cd /tmp/Python39 && \
    wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tar.xz && \
    tar xvf Python-3.9.7.tar.xz

RUN cd /tmp/Python39/Python-3.9.7 && \
    ./configure && \
    make altinstall

RUN rm -rf /tmp/Python39

# pip -> pip3.9
RUN ln -s /usr/local/bin/pip3.9 /usr/local/bin/pip

# pip -> pip3.9
RUN ln -s /usr/local/bin/python3.9 /usr/local/bin/python