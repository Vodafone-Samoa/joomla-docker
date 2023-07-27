FROM php:7.4-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install unzip
RUN apt-get update && apt-get install -y \
    unzip

# Install mysqli
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

# Copy Joomla zip file from local system
COPY Joomla_3.7.4-Stable-Full_Package.zip /var/www/html/joomla.zip

# Unzip Joomla
RUN unzip /var/www/html/joomla.zip -d /var/www/html/ \
 && chown -R www-data:www-data /var/www/html \
 && rm /var/www/html/joomla.zip

# Copy startup script
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

CMD ["start.sh"]

