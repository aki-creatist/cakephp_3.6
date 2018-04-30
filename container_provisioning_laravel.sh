#!/bin/bash

composer create-project laravel/laravel --prefer-dist myapp 5.6

# storageのパーミッションを変更
chmod -R 777 myapp/storage
# bootstrap/cacheのパーミッションを変更
chmod -R 777 myapp/bootstrap/cache

FILE=myapp/config/app.php
OLD="'timezone' => 'UTC',"
NEW="'timezone' => 'Asia\/Tokyo',"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e

OLD="'locale' => 'en',"
NEW="'locale' => 'ja',"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e

OLD="'fallback_locale' => 'en',"
NEW="'fallback_locale' => 'ja',"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e

FILE=myapp/.env
OLD="DB_HOST=127.0.0.1"
NEW="DB_HOST=mysql"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e

OLD="DB_DATABASE=homestead"
NEW="DB_DATABASE=project"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e

OLD="DB_USERNAME=homestead"
NEW="DB_USERNAME=user"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e

OLD="DB_PASSWORD=secret"
NEW="DB_PASSWORD=pass"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}
rm -rf ${FILE}e