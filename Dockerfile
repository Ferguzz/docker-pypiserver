FROM ubuntu:16.04

RUN apt-get update && apt-get install -y apache2-utils python-pip
RUN pip install passlib==1.7.1 pypiserver==1.2.0

COPY start-server.sh /usr/local/bin

EXPOSE 80
CMD ["start-server.sh"]
