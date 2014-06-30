FROM fedora
MAINTAINER james

RUN date > /root/date

RUN rpm -qa > /root/pythontools.info
RUN yum install wget unzip git mongodb python-setuptools python-pip libffi libffi-devel -y
RUN mkdir /opt/stack
RUN git clone https://git.openstack.org/openstack/ceilometer.git /opt/stack/
WORKDIR /opt/stack
RUN python setup.py install
RUN mkdir -p /etc/ceilometer
RUN cp /opt/stack/etc/ceilometer/*.json /etc/ceilometer
RUN cp /opt/stack/etc/ceilometer/*.yaml /etc/ceilometer
RUN cp /opt/stack/etc/ceilometer/ceilometer.conf.sample /etc/ceilometer/ceilometer.conf

#Things that will likely be removed later
#RUN wget https://github.com/jameslabocki/ceilometer/archive/master.zip -O /opt/master.zip
#RUN unzip /opt/master.zip -d /opt
#RUN ls -lR /opt/ > /root/opt.ls
#RUN wget http://arm.koji.fedoraproject.org//packages/python-tox/1.6.1/1.fc21/noarch/python-tox-1.6.1-1.fc21.noarch.rpm -O /root/python-tox-1.6.1-1.fc21.noarch.rpm
#RUN yum localinstall /root/python-tox-1.6.1-1.fc21.noarch.rpm


