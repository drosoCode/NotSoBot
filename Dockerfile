FROM debian:10

WORKDIR /home/bot

COPY . .

RUN apt-get update && apt-get install -y mariadb-server python3 py python3-pip && pip3 install -r requirements.txt

CMD bash
