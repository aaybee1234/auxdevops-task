FROM ubuntu:latest

RUN apt-get update && apt-get -y upgrade && apt-get -y install curl

COPY data-retrieval.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/data-retrieval.sh

CMD ["/usr/local/bin/data-retrieval.sh"]
