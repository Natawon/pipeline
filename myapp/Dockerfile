FROM docker.io/alpine:3

# When jenkins uses ansible inside the container, ansible tries to create a temp folder /.ansible
# Since Jenkins doesn't login as root, ansible doesn't have permission to create the temp folder
# It's necessary to create this folder whit full permission for any user 
RUN mkdir -m 777 /.ansible

# sshpass is necessary if it's intended to login with username and password to the target
RUN apk add ansible sshpass \
&& adduser -S ansible

# Installing ssh and enabling it when the container is launched is necessary if it's required to perform local_action
RUN apk add openrc openssh \
&& rc-update add sshd

# This port is expose for executing local_action, but it's not exposed
# It makes sense to expose this port only if ssh is enable for executing local_actions
EXPOSE 22/tcp