FROM debian:10

WORKDIR /home/bot

COPY . .

RUN apt-get update && apt-get install -y mariadb-server python3 python3-pip git pkg-config
RUN apt-get install -y libfreetype6-dev libpng-dev libxml2-dev libxslt1-dev 
RUN pip3 install git+git://github.com/jkbr/httpie.git 
#RUN pip3 install -r requirements.txt

CMD bash
