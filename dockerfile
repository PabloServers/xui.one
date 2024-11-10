FROM ubuntu:24.04
WORKDIR /app

COPY install.sh /app/install.sh
RUN apt-get update && \
    apt-get install -y sudo wget unzip dos2unix && \
    apt-get clean


RUN dos2unix /app/install.sh

RUN chmod +x /app/install.sh

CMD ["./install.sh"]
