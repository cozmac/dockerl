FROM ubuntu:latest

RUN apt-get update
RUN apt-get install vim -y
RUN apt-get install git-core -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install awscli
RUN pip3 install boto3
RUN apt-get install wget -y
RUN apt-get install zip -y
RUN cd /tmp \
  && wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip \
  && unzip terraform_0.11.10_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm -rf terraform_0.11.10_linux_amd64.zip
RUN apt-get install groff -y
