FROM ubuntu:12.04

ARG USER_ID
ARG USER_NAME

# Update of system
RUN apt-get update
RUN apt-get upgrade

# Create user which will be run in container
RUN useradd $USER_NAME -m -s /bin/bash -u$USER_ID

# Install of additional tools
RUN apt-get install vim -y
RUN apt-get install apache2 -y
RUN apt-get install libapache2-mod-php5 -y
RUN apt-get install php5 -y
RUN apt-get install php5-mcrypt php5-mysql php5-curl php5-gd php5-gmp php5-imap php5-intl php5-sqlite php5-xsl -y

# Include apache2 custom configuration
COPY demo.apache.conf /usr/local/apache2/conf/demo.apache.conf
RUN echo "Include /usr/local/apache2/conf/demo.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

# Start apache2 service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"] 
