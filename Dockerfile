FROM fedora
MAINTAINER james

RUN date > /root/date

RUN yum install wget unzip -y
RUN mkdir /opt
RUN wget https://github.com/jameslabocki/ceilometer/archive/master.zip -O /opt/master.zip
RUN cd /opt
RUN unzip master.zip
RUN ls /opt/ > /root/opt.ls


