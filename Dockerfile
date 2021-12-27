FROM alpine:3.12

RUN apk add --no-cache \
		bash \
		docker \
		openssh-client \
		git \
		py3-pip \
		py3-wheel \
		py3-cryptography \
		py3-mysqlclient \
		py3-gevent \
		py3-bcrypt

RUN mkdir -p /usr/src/app

COPY requirements.txt /usr/src/app/

WORKDIR /usr/src/app
RUN pip3 install --no-cache-dir -r requirements.txt
