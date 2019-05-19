FROM ubuntu:18.04

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
RUN apt-get install php7.2-bcmath php7.2-curl php7.2-gd php7.2-imagick php7.2-intl php7.2-mbstring php7.2-mysql php7.2-xml php7.2-soap php7.2-xsl php7.2-zip -y

# Custom configs in the php.ini file
ADD php.ini /etc/php/7.2/apache2/conf.d/40-custom.ini

# Mode rewrite configuration
ADD apache2.conf /etc/apache2/apache2.conf

# Include apache2 custom configuration
#COPY demo.apache.conf /usr/local/apache2/conf/demo.apache.conf
#RUN echo "Include /usr/local/apache2/conf/demo.apache.conf" \
#    >> /etc/apache2/apache2.conf

# Start apache2 service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
