#!/bin/bash

cd /
rm -R -f /app
mkdir -p /app
APP_DIR=/app
wget -q https://www.ianseo.net/Release/Ianseo_20220701.zip && unzip -o Ianseo_20220701.zip -d $APP_DIR
wget -q http://www.sjal.fi/@Bin/304890/SJAL_Paivitys.zip && unzip -o SJAL_Paivitys.zip

rm -f Ianseo_20220701.zip
rm -f SJAL_Paivitys.zip

cp SJAL_Paivitys/index_qualification.php $APP_DIR/Qualification/index.php

mkdir -p $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/index.php $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/index2.php $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/index3.php $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/index4.php $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/ftp_yhteys.php $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/lahetys.php $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/help.php $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/ampujat_ianseo.csv $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/seurat_ianseo.csv $APP_DIR/Modules/Custom/SJAL
cp -u SJAL_Paivitys/SJAL/menu.php $APP_DIR/Modules/Custom/

rm -f $APP_DIR/Common/config.inc.php 

chmod -R a+w $APP_DIR



