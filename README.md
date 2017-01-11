Ianseo Docker
=================

Docker container for setting up Ianseo server (http://ianseo.net/)

Usage
-----

To create a new image, execute the following command:

	docker build -t mikkhola/ianseo .

Start image:

	docker run -d -p 80:80 -p 3306:3306 mikkhola/ianseo

Example how to connect running Docker container

	docker exec -i -t $(docker ps | grep ianseo | cut -d " " -f1) /bin/bash

Log from container can be shown with command

	docker logs $(docker ps | grep ianseo | cut -d " " -f1)
