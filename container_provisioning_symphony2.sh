#!/bin/bash

cd myapp
composer install
rm -f UPGRADE-*.md
rm -f LICENSE

composer create-project symfony/framework-standard-edition myapp 2.7.45
