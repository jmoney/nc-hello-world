FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y netcat tzdata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD hello-world.sh /app/
ADD response.sh /app/

WORKDIR /app

CMD ["./hello-world.sh"]