FROM fedora
MAINTAINER james

RUN date > /root/date

RUN yum install wget unzip -y
RUN mkdir /opt/ceilometer
RUN wget https://github.com/jameslabocki/ceilometer/archive/master.zip -O /opt/master.zip
RUN unzip /opt/master.zip -d /opt/ceilometer
RUN ls -lR /opt/ > /root/opt.ls


