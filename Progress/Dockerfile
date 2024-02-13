FROM ubuntu
LABEL author="jbr66"

RUN apt update
RUN apt install -y vim net-tools python3 python3-pip libmariadb3 libmariadb-dev
ENV DIRPATH=/
WORKDIR $DIRPATH
COPY oe11.tgz .
RUN tar xvzf oe11.tgz
RUN <<EOF
echo Create user
mkdir /home/proadmin
groupadd -g 1000 proadmin
useradd -u 1000 -g proadmin -d /home/proadmin -s /bin/bash proadmin
chown -R proadmin: /home/proadmin
echo Cleanup!
rm oe11.tgz
EOF
USER proadmin
RUN pip3 install mariadb
RUN pip3 install jaydebeapi
USER root
