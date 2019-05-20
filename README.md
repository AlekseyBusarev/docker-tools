# Docker config
Универсальный Docker config для работы с разными версиями php для разных проектов.

# Документация
1. [Docker: Общая документация](https://docs.docker.com/)
2. [Docker: Установка](https://docs.docker.com/install/)
3. [Docker Compose: Общая информация](https://docs.docker.com/compose/overview/)
4. [Docker Compose: Установка](https://docs.docker.com/compose/install/)

# Доступные CSM системы
  - CS-Cart

# Достуные контейнеры
 - php 5.3
 - php 7.2
 - MySQL
 - Phpmyadmin

# Типовые команды
1. docker images - список всех установленных Docker образов.
1. docker rmi image_name - удалить Docker образ.
1. docker container ls - список всех активных контейнеров.
1. docker container ls -a - список всех контейнеров (активных и неактивных).
1. docker build -t image_name . - создать образ на основе Dockerfile, где:
   - image_name - имя, с которым образ будет создан.
1. docker run -dit --name container_name image_name - создать контейнер на основе Docker образа, где:
   - container_name - имя, с которым контейнер будет создан
   - image_name - имя существующего Docker образа
1. docker container logs container_name - посмотреть логи которые записались при запуске контейнера. Можно увидеть ошибки, которые привели к остановке контейнера.
1. docker exec -it container_name bash - зайти в контейнер
1. docker container stop container_name - остановить контейнер.
1. docker-container rm container_name - удалить контейнер. Удалить можно только остановленный контейнер.
1. docker-compose up -d --build - запустить контейнеры в Docker Compose конфигурации.
1. docker-compose stop - остановить все контейнеры в Docker Compose конфигурации.
1. docker-compose rm - удалить все контейнеры в Docker Compose конфигурации.

# Изменения
Все изменения будут отражены в [changelog](https://github.com/AlekseyBusarev/docker-tools/blob/master/changelog.txt) файле
