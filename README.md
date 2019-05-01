# PHP 5.3

Окружение для работы с PHP 5.3.

# Список контейнеров
1. Ubuntu 12.04
1. Apache/2.2.22
1. PHP 5.3.10-1ubuntu3.26 (cli)
1. MySQL 5.6.44
1. Phpmyadmin (latest)

# PHP модули
<details><summary>Module list</summary>
<p>
<ol>
<li>bcmath</li>
<li>bz2</li>
<li>calendar</li>
<li>Core</li>
<li>ctype</li>
<li>curl</li>
<li>date</li>
<li>dba</li>
<li>dom</li>
<li>ereg</li>
<li>exif</li>
<li>fileinfo</li>
<li>filter</li>
<li>ftp</li>
<li>gd</li>
<li>gettext</li>
<li>gmp</li>
<li>hash</li>
<li>iconv</li>
<li>imap</li>
<li>intl</li>
<li>json</li>
<li>libxml</li>
<li>mbstring</li>
<li>mcrypt</li>
<li>mhash</li>
<li>mysql</li>
<li>mysqli</li>
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