FROM tutum/lamp
MAINTAINER Mikko Holappa <mikko.holappa@yahoo.fi>
WORKDIR /opt
RUN  apt-get update \
  && apt-get install -y wget unzip imagemagick php5-imagick php5-gd php5-curl
ADD fetch_ianseo.sh .
RUN ./fetch_ianseo.sh
EXPOSE 80 3306
CMD ["/run.sh"]

