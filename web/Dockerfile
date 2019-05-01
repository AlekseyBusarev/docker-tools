FROM ubuntu:latest

ARG USER_ID
ARG USER_NAME
ARG TIMEZONE

# Add actual timezone
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone

# Update of system
RUN apt-get update
RUN apt-get upgrade -y

# Create user which will be run in container
RUN useradd $USER_NAME -m -s /bin/bash -u$USER_ID

# Install of additional tools
RUN apt-get install vim -y
RUN apt-get install apache2 -y
RUN apt-get install libapache2-mod-php7.2 -y
RUN a2enmod rewrite
RUN apt-get install php7.2 -y
RUN apt-get install php7.2-mysql php7.2-curl php7.2-gd php7.2-gmp php7.2-imap php7.2-intl php7.2-sqlite php7.2-xsl php7.2-imagick php7.2-soap php7.2-zip -y

# Include apache2 custom configuration
COPY demo.apache.conf /usr/local/apache2/conf/demo.apache.conf
RUN echo "Include /usr/local/apache2/conf/demo.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

# Start apache2 service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
