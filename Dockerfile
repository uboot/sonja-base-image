FROM alpine:3.15

RUN apk add --no-cache \
		bash \
		docker \
		openssh-client \
		git \
		py3-pip \
		py3-wheel \
		py3-cffi \
		py3-cryptography \
		py3-greenlet \
		py3-mysqlclient \
		py3-bcrypt

RUN mkdir -p /usr/src/app

COPY requirements.txt /usr/src/app/

WORKDIR /usr/src/app
RUN pip3 install --no-cache-dir -r requirements.txt
