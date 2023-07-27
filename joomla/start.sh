#!/bin/bash

# Generate configuration.php
cat << EOF > /var/www/html/configuration.php
<?php
class JConfig {
    public \$offline = '0';
    public \$offline_message = 'This site is down for maintenance.<br /> Please check back again soon.';
    public \$display_offline_message = '1';
    public \$offline_image = '';
    public \$sitename = 'Samoa Post Office';
    public \$editor = 'jce';
    public \$list_limit = '20';
    public \$access = '1';
    public \$captcha = '0';
    public \$dbtype = 'mysqli';
    public \$host = '${JOOMLA_DB_HOST}';
    public \$user = '${JOOMLA_DB_USER}';
    public \$password = '${JOOMLA_DB_PASSWORD}';
    public \$db = '${JOOMLA_DB_NAME}';
    public \$dbprefix = 'samoapost_';
    public \$live_site = '';
    public \$secret = '8menlujH8M8lmGR6FhNxppS6j7444p1j';
    public \$gzip = '0';
    public \$error_reporting = 'none';
    public \$helpurl = 'https://help.joomla.org/proxy?keyref=Help{major}{minor}:{keyref}&lang={langcode}';
    public \$ftp_host = '';
    public \$ftp_port = '21';
    public \$ftp_user = '';
    public \$ftp_pass = '';
    public \$ftp_root = '';
    public \$ftp_enable = '0';
    public \$offset = 'UTC';
    public \$mailer = 'mail';
    public \$mailfrom = '';
    public \$fromname = 'Samoa Post';
    public \$sendmail = '/usr/sbin/sendmail';
    public \$smtpauth = '0';
    public \$smtpuser = '';
    public \$smtppass = '';
    public \$smtphost = 'localhost';
    public \$smtpsecure = 'none';
    public \$smtpport = '25';
    public \$caching = '0';
    public \$cache_handler = 'file';
    public \$cachetime = '15';
    public \$MetaDesc = '';
    public \$MetaKeys = '';
    public \$MetaTitle = '1';
    public \$MetaAuthor = '1';
    public \$MetaVersion = '0';
    public \$robots = '';
    public \$sef = '1';
    public \$sef_rewrite = '0';
    public \$sef_suffix = '0';
    public \$unicodeslugs = '0';
    public \$feed_limit = '10';
    public \$log_path = '/var/www/html/log';
    public \$tmp_path = '/var/www/html/tmp';
    public \$lifetime = '15';
    public \$session_handler = 'database';
    public \$MetaRights = '';
    public \$sitename_pagetitles = '1';
    public \$force_ssl = '0';
    public \$cookie_domain = '';
    public \$cookie_path = '';
    public \$asset_id = '1';
    public \$debug = '0';
    public \$debug_lang = '0';
    public \$display_offline_message = '1';
    public \$offset_user = 'UTC';
    public \$mediaversion = 'd8d8d2526f31b880fe627d2d15a814de';
    public \$cache_platformprefix = '0';
    public \$session_memcache_server_host = 'localhost';
    public \$session_memcache_server_port = '11211';
    public \$session_memcached_server_host = 'localhost';
    public \$session_memcached_server_port = '11211';
    public \$frontediting = '1';
    public \$feed_email = 'author';
    public \$replyto = '';
    public \$replytoname = '';
    public \$shared_session = '0';
    public \$memcache_persist = '1';
    public \$memcache_compress = '0';
    public \$memcache_server_host = 'localhost';
    public \$memcache_server_port = '11211';
    public \$memcached_persist = '1';
    public \$memcached_compress = '0';
    public \$memcached_server_host = 'localhost';
    public \$memcached_server_port = '11211';
    public \$redis_persist = '1';
    public \$redis_server_host = 'localhost';
    public \$redis_server_port = '6379';
    public \$redis_server_auth = '';
    public \$redis_server_db = '0';
    public \$proxy_enable = '0';
    public \$proxy_host = '';
    public \$proxy_port = '';
    public \$proxy_user = '';
    public \$proxy_pass = '';
    public \$mailonline = '1';
    public \$massmailoff = '0';
}
EOF

# Ensure ownership of Joomla files
chown -R www-data:www-data /var/www/html

# Start Apache in the foreground
/usr/sbin/apache2ctl -D FOREGROUND

