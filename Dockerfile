FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes

ENV APP_ROOT /code

RUN apt-get update --quiet \
    && apt-get install --yes sudo python-pip python-dev libffi-dev libssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -U cffi ansible

WORKDIR ${APP_ROOT}
VOLUME ${APP_ROOT}
