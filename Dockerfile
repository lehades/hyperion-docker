FROM raspbian/stretch

# Install HYPERION
RUN apt-get update
#RUN apt-get -y upgrade
RUN apt-get -y install curl wget

RUN curl -k -L --output install_hyperion.sh --get https://raw.githubusercontent.com/lehades/hyperion-docker/master/install_hyperion.sh
RUN chmod +x install_hyperion.sh
RUN sh ./install_hyperion.sh

EXPOSE 19444
EXPOSE 19445
