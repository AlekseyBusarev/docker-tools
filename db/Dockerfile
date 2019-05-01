FROM mysql:5.6

ARG DB_GROUP_ID
ARG DB_USER_ID
ARG DB_PASSWORD

ENV MYSQL_ROOT_PASSWORD=$DB_PASSWORD

RUN groupadd -g $DB_GROUP_ID mysql-group
RUN usermod -u $DB_USER_ID -g $DB_GROUP_ID mysql

COPY my.cnf /etc/alternatives/my.cnf
