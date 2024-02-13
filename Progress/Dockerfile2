FROM jbr66/centos8
LABEL author="jbr66"

RUN yum update
RUN yum -y install libnsl
ENV DIRPATH=/tmp
WORKDIR $DIRPATH
COPY PROGRESS_OE_11.7_LNX_64.tar.gz .
COPY 11.7_qond.ini .
WORKDIR oe11
RUN tar xvzf ../PROGRESS_OE_11.7_LNX_64.tar.gz 
WORKDIR $DIRPATH
RUN <<EOF
echo Install Progress OE11.7
oe11/proinst -b ./11.7_qond.ini -l ./silentinstall.log
echo Create user
groupadd -g 1000 proadmin
useradd -u 1000 -g proadmin proadmin
echo Cleanup!
rm -rf oe11
rm 11.7_qond.ini
rm PROGRESS_OE_11.7_LNX_64.tar.gz
EOF
