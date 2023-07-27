FROM php:7.4-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install curl and unzip
RUN apt-get update && apt-get install -y \
    curl \
    unzip

# Download specified version of Joomla
RUN curl -L -o joomla.zip https://downloads.joomla.org/cms/joomla3/3-7-4/Joomla_3-7.4-Stable-Full_Package.zip?format=zip \
 && ls -la  # List files to check if joomla.zip is present

# Unzip Joomla
RUN unzip joomla.zip -d /var/www/html/ \
 && ls -la /var/www/html/  # List files in /var/www/html/ to check if Joomla is extracted correctly

# Set ownership
RUN chown -R www-data:www-data /var/www/html/ \
 && rm joomla.zip

# Copy configuration file
COPY configuration.php /var/www/html/

