FROM debian:buster-slim
RUN apt update
RUN apt -y upgrade
RUN apt -y install gnupg
RUN apt -y install curl
RUN apt -y install software-properties-common

# Install Packer
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt update && apt -y install packer

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
