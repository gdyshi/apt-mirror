FROM ubuntu:18.04
# RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && apt-get update
RUN apt-get update
RUN	apt-get install -y nano apt-mirror nginx

# apt-mirror
COPY ./mirror.list /etc/apt/mirror.list
# COPY ./apt-mirror /etc/cron.d/apt-mirror
# RUN apt-mirror

# nginx
COPY ./default /etc/nginx/sites-enabled/default

WORKDIR /etc/apt
CMD ["nginx", "-g", "daemon off;"]
