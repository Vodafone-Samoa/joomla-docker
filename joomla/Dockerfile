FROM php:7.1-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Download specified version of Joomla
RUN curl -o joomla.zip -SL https://downloads.joomla.org/cms/joomla3/3-7-4/Joomla_3-7-4-Stable-Full_Package.zip \
 && unzip joomla.zip -d /var/www/html/ \
 && chown -R www-data:www-data /var/www/html \
 && rm joomla.zip

# Copy configuration file
COPY configuration.php /var/www/html/
