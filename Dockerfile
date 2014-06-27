FROM fedora
MAINTAINER james

RUN date > /root/date

RUN yum install wget unzip -y
RUN wget https://github.com/jameslabocki/ceilometer/archive/master.zip -O /opt/master.zip
RUN cd /opt
RUN unzip master.zip
RUN ls /opt/ > /root/opt.ls


