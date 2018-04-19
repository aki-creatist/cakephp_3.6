#!/bin/bash

cd myapp
composer install
FILE=app/Config/core.php
OLD=`cat app/Config/core.php | grep 'salt'`
sed -ie "s/${OLD}/Configure::write('Security.salt', 'testb0qyJfIxfsmi');/g" ${FILE}

OLD=`cat app/Config/core.php | grep 'cipherSeed'`
sed -ie "s/${OLD}/Configure::write('Security.cipherSeed', '768599683645');/g" ${FILE}

cp app/Config/database.php.default app/Config/database.php

FILE=app/Config/database.php
OLD="'host' => 'localhost',"
NEW="'host' => 'mysql',"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}

OLD="'password' => 'password',"
NEW="'password' => 'pass',"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}

OLD="'database' => 'database_name',"
NEW="'database' => 'project',"
sed -ie "s/${OLD}/${NEW}/g" ${FILE}

# DebugKigの追加 - https://github.com/cakephp/debug_kit/tree/2.2
composer require cakephp/debug_kit "^2.2.0"
mv Plugin/DebugKit app/Plugin/
echo "CakePlugin::loadAll();" >> app/Config/bootstrap.php

# ツールバーを有効にする際は app/Controller/AppController.php に下記の１行を追加
# public $components = array('DebugKit.Toolbar');

# PHPUnitの追加 - https://book.cakephp.org/2.0/ja/development/testing.html
composer require --dev phpunit/phpunit:"3.7.38"
curl nginx/test.php | grep 'CakePHP Test Suite 2.9.8'