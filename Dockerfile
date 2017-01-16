FROM ubuntu:14.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget

# install kurento
RUN echo "deb http://ubuntu.kurento.org trusty kms6" | sudo tee /etc/apt/sources.list.d/kurento.list
RUN wget -O - http://ubuntu.kurento.org/kurento.gpg.key | sudo apt-key add -
RUN apt-get update
RUN apt-get install kurento-server


CMD ["/bin/bash"]
