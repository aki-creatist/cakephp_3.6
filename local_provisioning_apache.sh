#!/bin/bash

cp database laradock/
cd laradock
docker-compose up -d --build apache2 mysql redis beanstalkd php-fpm