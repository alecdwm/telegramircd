FROM python:3.6-alpine

RUN apk add --no-cache git libmagic gcc musl-dev \
	&& git clone https://github.com/alecdwm/telegramircd \
	&& cd telegramircd \
	&& pip3 install -r requirements.txt

EXPOSE 80 6669

WORKDIR "telegramircd"
CMD ["/telegramircd/telegramircd.py", "-c", "config"]
