FROM centos
RUN yum install -y openssh-server openssh-clients vim net-tools passwd
RUN cd /etc/ssh; ssh-keygen -A
RUN passwd -d root
EXPOSE 22 1080
COPY ./sshd_config /etc/ssh/sshd_config
CMD /usr/sbin/sshd && ssh -NTD 0.0.0.0:1080 -o StrictHostKeyChecking=no root@localhost
