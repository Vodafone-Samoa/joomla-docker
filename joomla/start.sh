#!/bin/bash

# Generate configuration.php
cat << EOF > /var/www/html/configuration.php
<?php
class JConfig {
    public \$offline = '0';
    public \$offline_message = 'This site is down for maintenance.<br /> Please check back again soon.';
    public \$display_offline_message = '1';
    public \$offline_image = '';
    public \$sitename = 'My Joomla Site';
    public \$editor = 'tinymce';
    public \$captcha = '0';
    public \$list_limit = '20';
    public \$access = '1';

    public \$dbtype = 'mysqli';
    public \$host = '${JOOMLA_DB_HOST}';
    public \$user = '${JOOMLA_DB_USER}';
    public \$password = '${JOOMLA_DB_PASSWORD}';
    public \$db = '${JOOMLA_DB_NAME}';
    public \$dbprefix = 'jos_';

    public \$log_path = '/var/www/html/logs';
    public \$tmp_path = '/var/www/html/tmp';

    public \$error_reporting = 'default';
    public \$gzip = '0';
    public \$lifetime = '15';
    public \$session_handler = 'database';

    // Other settings...
}
EOF

# Ensure ownership of Joomla files
chown -R www-data:www-data /var/www/html

# Start Apache in the foreground
/usr/sbin/apache2ctl -D FOREGROUND

