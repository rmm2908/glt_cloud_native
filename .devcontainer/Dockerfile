FROM ubuntu:22.04

# update and install sudo
RUN apt-get update && \
    apt-get -y install sudo
# install curl
RUN sudo apt-get install curl -y
# install azure cli
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
# install terraform
RUN apt-get update && apt-get install -y gnupg software-properties-common curl wget git && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt-get update && apt-get install terraform -y
RUN curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.29/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg && \
    echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.29/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list && \
    sudo apt-get update && \
    sudo apt-get install -y kubectl
# update and install wget and git
RUN apt-get update && apt-get install -y \
    wget \
    git