FROM ghifari160/apache-php56:18.04

LABEL maintainer "Ghifari160 <ghifari160@ghifari160.com>"

# Disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Download the latest version of Wordpress
RUN mkdir -p /tmp/g16 && \
    wget https://wordpress.org/latest.tar.gz -O /tmp/g16/wp.tar.gz

# Add init script
RUN mkdir -p /etc/g16
ADD init.sh /etc/g16/wp_init.sh
RUN chown root:root /etc/g16/wp_init.sh && chmod 711 /etc/g16/wp_init.sh

VOLUME ["/var/www"]

ENTRYPOINT ["/etc/g16/wp_init.sh"]
