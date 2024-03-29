FROM alpine:latest


WORKDIR /app

COPY . /app

EXPOSE 8000

CMD [ "/app/webserver" ]
