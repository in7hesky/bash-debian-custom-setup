FROM debian

WORKDIR /home/in7/debconf

COPY . .

CMD ["./setup.sh"]

