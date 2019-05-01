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
```python
bcmath
bz2
calendar
Core
ctype
curl
date
dba
dom
ereg
exif
fileinfo
filter
ftp
gd
gettext
gmp
hash
iconv
imap
intl
json
libxml
mbstring
mcrypt
mhash
mysql
mysqli
openssl
pcntl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
Reflection
session
shmop
SimpleXML
soap
sockets
SPL
sqlite3
standard
sysvmsg
sysvsem
sysvshm
tokenizer
wddx
xml
xmlreader
xmlwriter
xsl
zip
zlib
```
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