FROM fedora
MAINTAINER james

RUN df -h > /root/df
RUN ls / > /root/ls

