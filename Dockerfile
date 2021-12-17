FROM ubuntu:20.04

RUN apt update && \
    apt upgrade -y && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:ansible/ansible && \
    apt install -y ansible

RUN mkdir /ansible && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]