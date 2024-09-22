FROM debian

WORKDIR /home/in7

COPY . .

CMD ["./setup.sh"]

