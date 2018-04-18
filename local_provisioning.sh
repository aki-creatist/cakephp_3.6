#!/bin/bash

cp database laradock/
cd laradock
docker-compose up -d --build nginx mysql redis beanstalkd php-fpm