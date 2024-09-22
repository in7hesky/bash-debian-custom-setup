FROM debian

WORKDIR /home/in7

COPY . .

RUN apt update && apt upgrade

CMD ["./setup.sh"]

