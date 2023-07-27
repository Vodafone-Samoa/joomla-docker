FROM php:7.4-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install unzip
RUN apt-get update && apt-get install -y \
    unzip

# Copy Joomla zip file from local system
COPY Joomla_3-7-4-Stable-Full_Package.zip /var/www/html/joomla.zip

# Unzip Joomla
RUN unzip /var/www/html/joomla.zip -d /var/www/html/ \
 && chown -R www-data:www-data /var/www/html \
 && rm /var/www/html/joomla.zip

# Copy configuration file
COPY configuration.php /var/www/html/

