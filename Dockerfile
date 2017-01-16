FROM ubuntu:14.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget

# install kurento
RUN echo "deb http://ubuntu.kurento.org trusty kms6" | tee /etc/apt/sources.list.d/kurento.list
RUN wget -O - http://ubuntu.kurento.org/kurento.gpg.key | apt-key add -
RUN apt-get update
RUN apt-get install -y kurento-server


CMD ["/bin/bash"]
