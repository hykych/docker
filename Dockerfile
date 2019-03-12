FROM ubuntu:16.04

RUN apt-get update
#RUN apt install git --assume-yes
COPY v2ray.sh /v2ray.sh
RUN bash v2ray.sh
RUN rm /etc/v2ray/config.json
COPY config.json /etc/v2ray/
RUN chmod +x /usr/bin/v2ray/v2ray
RUN apt-get install net-tools
CMD ["/usr/bin/v2ray/v2ray", "-config", "/etc/v2ray/config.json", "&"]
