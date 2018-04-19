#!/bin/bash

cd myapp
git branch
git checkout 1.6/master
git submodule init
git submodule update

cd myapp
composer update

php oil -v