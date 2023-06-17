FROM buildpack-deps:stable

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes

ENV APP_ROOT /code

RUN apt-get update --quiet \
    && apt-get install --yes python3-dev python3-pip libffi-dev libssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# RUN easy_install -U pip
RUN pip install -U --break-system-packages cffi ansible

WORKDIR ${APP_ROOT}
VOLUME ${APP_ROOT}
