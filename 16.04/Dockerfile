FROM ghifari160/apache-php56:16.04

MAINTAINER Ghifari160 <ghifari160@ghifari160.com>

# Disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Download and install Wordpress
RUN mkdir -p /tmp/g16 && \
    wget https://wordpress.org/latest.tar.gz -O /tmp/g16/wp.tar.gz && \
    cd /var/www && tar -xvzf /tmp/g16/wp.tar.gz && \
    rm -rf /var/www/html && mv /var/www/wordpress /var/www/html

# Fix permission
RUN chown root:root /var/www/html && chmod 777 /var/www/html

VOLUME ["/var/www"]
