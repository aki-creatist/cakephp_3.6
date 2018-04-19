#!/bin/bash

composer self-update && composer create-project --prefer-dist cakephp/app myapp

FILE=myapp/config/app.php
OLD="'host' => 'localhost'"
NEW="'host' => 'mysql'"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e

OLD="'username' => 'my_app'"
NEW="'username' => 'user'"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e

OLD="'password' => 'secret'"
NEW="'password' => 'pass'"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e

OLD="'database' => 'my_app'"
NEW="'database' => 'project'"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e
