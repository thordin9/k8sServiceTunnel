FROM alpine:3.7
RUN apk add --no-cache openssh-server bash supervisor
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
RUN sed -i 's$#HostKey /etc/ssh/ssh_host_ecdsa_key$HostKey /etc/ssh/ssh_host_ecdsa_key$' /etc/ssh/sshd_config
RUN sed -i 's/#GatewayPorts no/GatewayPorts yes/' /etc/ssh/sshd_config
RUN sed -i 's/root:!/root:*/g' /etc/shadow
RUN mkdir ~/.ssh
RUN yes /etc/ssh/ssh_host_ecdsa_key | ssh-keygen -b 256  -t ecdsa -N ''
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN cat /etc/ssh/sshd_config
EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf","-j","/tmp/supervisord.pid"]