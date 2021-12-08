FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y netcat tzdata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY hello-world.sh /app/hello-world.sh
COPY response.sh /app/response.sh
ADD haproxy.cfg /usr/local/etc/haproxy/
RUN chown -R root:root /usr/local/etc/haproxy/ && chmod 644 -R /usr/local/etc/haproxy/*.cfg
VOLUME "/usr/local/etc/haproxy"

EXPOSE 8080

WORKDIR /app

CMD ["./hello-world.sh"]