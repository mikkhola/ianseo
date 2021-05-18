#!/bin/bash

cd /
rm -R -f /app
mkdir -p /app
APP_DIR=/app
wget -q https://www.ianseo.net/Release/Ianseo_20210414.zip && unzip -o Ianseo_20210414.zip -d $APP_DIR
rm -f Ianseo_20210414.zip

rm -f $APP_DIR/Common/config.inc.php 

chmod -R a+w $APP_DIR



