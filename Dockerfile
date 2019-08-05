FROM openjdk:12-alpine
MAINTAINER Dosec <bailm@dosec.cn>
ADD proxy-server-0.1 /proxy-server-0.1
CMD ["/proxy-server-0.1/bin/startup.sh"]
