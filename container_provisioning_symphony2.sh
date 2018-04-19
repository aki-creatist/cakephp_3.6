#!/bin/bash

composer create-project symfony/framework-standard-edition myapp 2.7.45
cd myapp
rm -f UPGRADE-*.md
rm -f LICENSE