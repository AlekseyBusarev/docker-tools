# PHP 7.2

Окружение для работы с PHP 7.2.

# Список контейнеров
1. Ubuntu (latest)
1. Apache/2.4.29
1. PHP 7.2.17 (cli)
1. MySQL 5.6.44
1. Phpmyadmin (latest)

# PHP модули
<details><summary>Module list</summary>
<p>
<ol>
<li>calendar</li>
<li>Core</li>
<li>ctype</li>
<li>curl</li>
<li>date</li>
<li>dom</li>
<li>exif</li>
<li>fileinfo</li>
<li>filter</li>
<li>ftp</li>
<li>gd</li>
<li>gettext</li>
<li>gmp</li>
<li>hash</li>
<li>iconv</li>
<li>imagick</li>
<li>imap</li>
<li>intl</li>
<li>json</li>
<li>libxml</li>
<li>mysqli</li>
<li>mysqlnd</li>
<li>openssl</li>
<li>pcntl</li>
<li>pcre</li>
<li>PDO</li>
<li>pdo_mysql</li>
<li>pdo_sqlite</li>
<li>Phar</li>
<li>posix</li>
<li>readline</li>
<li>Reflection</li>
<li>session</li>
<li>shmop</li>
<li>SimpleXML</li>
<li>soap</li>
<li>sockets</li>
<li>sodium</li>
<li>SPL</li>
<li>sqlite3</li>
<li>standard</li>
<li>sysvmsg</li>
<li>sysvsem</li>
<li>sysvshm</li>
<li>tokenizer</li>
<li>wddx</li>
<li>xml</li>
<li>xmlreader</li>
<li>xmlwriter</li>
<li>xsl</li>
<li>Zend Opcache</li>
<li>zip</li>
<li>zlib</li>
</ol>
</p>
</details>

# Start guide
1. Создайте копию .env от .env.example.
1. Добавьте настройки переменных оружения в .env файле:
   - ENV_HOST_PATH - путь до проекта на хост-машине
   - ENV_CONTAINER_PATH - путь, где будет располагаться проект в контейнере
   - ENV_TIMEZONE - временная зона. Пример *Europe/Minsk*
   - WEB_HOST_PORT - порт, который пробрасывается в контейнер
   - WEB_CONTAINER_PORT - порт, на котором будет доступен apache в контейнере
   - PHPMYADMIN_HOST_PORT - порт, который пробрасывается в контейнер
   - PHPMYADMIN_CONTAINER_PORT - порт, на котором будет доступен phpmyadmin в контейнере
   - DB_CONTAINER_PORT - порт, на котором будет доступен mysql в контейнере
   - DB_USER_ID - ID пользователя базы данных. В контейнере будет создан пользователь с таким же ID как на хост машине, чтобы не было конфликта с правами доступов. Посмотреть ID можно командой *id -u mysql_user*
   - DB_GROUP_ID - ID группы пользователя базы данных. В контейнере будет создана группа с таким же ID как на хост машине, чтобы не было конфликта с правами доступов. Посмотреть ID группы можно командой *id -g mysql_user*
   - DB_PASSWORD - Пароль для входа в базу данных
   - DB_HOST_PATH - Расположение файлов базы данных на хост машине. Пример */var/lib/mysql*
   - DB_CONTAINER_PATH - Расположение файлов базы данных в контейнере.
   - USER_NAME - Имя пользователя системы. В контейнере будет создан пользователь с таким же именем как на хост машине, чтобы не было конфликта с правами доступов.
   - USER_ID - ID пользователя системы. В контейнере будет создан пользователь с таким же ID как на хост машине, чтобы не было конфликта с правами доступов.
1. Запустить сборку окружения через *docker-compose up -d --build*