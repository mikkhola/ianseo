FROM mattrayner/lamp:latest-1804
MAINTAINER Mikko Holappa <mikko.holappa@yahoo.fi>
WORKDIR /app
RUN wget -q https://www.ianseo.net/Release/Ianseo_20220701.zip && unzip -o Ianseo_20220701.zip -d /app
RUN rm -f Ianseo_20220701.zip
RUN rm -f /app/Common/config.inc.php 
RUN chmod -R a+w /app
EXPOSE 80 3306
CMD ["/run.sh"]


