# Планы:
PHP 7.2:
- Не полностью работает SEO-модуль в CS-Cart. Ошибка Failed to connect to localhost port 8080: Connection refused

Все контейнеры:
- Контейнер с отправкой почты
- Контейнер с xDebug

Новые контейнеры:
- Окружение для Laravel
- Окружение с Nginx
- Окружение с Nginx + Apache


# Changelog
**v0.1-beta**

PHP 5.3 [ветка php5.3](https://github.com/AlekseyBusarev/docker-tools/tree/php5.3)
- Добавлен пользовательский файл php.ini, который расширяет настройки
- Добавлен mod_rewrite
- Добавлена возмонжость хранить логи apache из контейнера на хост машине

Magento [ветка magento-app](https://github.com/AlekseyBusarev/docker-tools/tree/magento-app)
- Добавлен контейнер, в котором можно установить или развернуть Magento2
- Добавлен mod_rewrite
- Добавлен .env.example файл
- Изменена основа для web-контейнера с ubuntu:latest на ubuntu:18.04
- Добавлена возмонжость хранить логи apache из контейнера на хост машине
- Обновлён README.md файл

PHP 7.2 [ветка php7.2](https://github.com/AlekseyBusarev/docker-tools/tree/php7.2)
- Добавлен mod_rewrite
- Изменена основа для web-контейнера с ubuntu:latest на ubuntu:18.04
- Добавлена возмонжость хранить логи apache из контейнера на хост машине
- Обновлён README.md файл