FROM php:cli
MAINTAINER Jessica Smith <jess@mintopia.net>

ENV \
	SCRIPT_DIR = /opt/app \
	GREEN = "\033[0;32m" \
	BLACK = "\033[0;0m" \

RUN \
	apt-get update && \
	apt-get install -y \
		lib32gcc1 \
		lib32stdc++6 \
		lib32tinfo5 \
		lib32ncurses5 \
		libcurl3-gnutls:i386 \
		expect \
		git && \
	mkdir /opt/app && \
	chdir /opt/app && /
	git clone https://github.com/zeropingheroes/lancache-autofill.git ./ && \
	cp .env.example dotenv && \
	composer update && \

WORKDIR /opt/app

