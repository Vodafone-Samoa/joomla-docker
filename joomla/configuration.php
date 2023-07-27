<?php
class JConfig {
	public $offline = '0';
	public $offline_message = 'This site is down for maintenance.<br /> Please check back again soon.';
	public $display_offline_message = '1';
	public $offline_image = '';
	public $sitename = 'My Joomla Site';
	public $editor = 'tinymce';
	public $captcha = '0';
	public $list_limit = '20';
	public $access = '1';

	public $dbtype = 'mysqli';
  public $host;
  public $user;
  public $password;
  public $db;
  public $dbprefix = 'jos_';

  public function __construct() {
      $this->host = getenv('JOOMLA_DB_HOST');
      $this->user = getenv('JOOMLA_DB_USER');
      $this->password = getenv('JOOMLA_DB_PASSWORD');
      $this->db = getenv('JOOMLA_DB_NAME');
  }

	public $live_site = '';
	public $secret = 'secret'; // Change this to your own secret string
	public $gzip = '0';
	public $error_reporting = 'default';
	public $helpurl = 'https://help.joomla.org';
	public $ftp_host = '127.0.0.1';
	public $ftp_port = '21';
	public $ftp_user = '';
	public $ftp_pass = '';
	public $ftp_root = '';
	public $ftp_enable = '0';
	public $offset = 'UTC';
	public $mailonline = '1';
	public $mailer = 'mail';
	public $mailfrom = 'admin@localhost.com';
	public $fromname = 'My Joomla Site';
	public $sendmail = '/usr/sbin/sendmail';
	public $smtpauth = '0';
	public $smtpuser = '';
	public $smtppass = '';
	public $smtphost = 'localhost';
	public $smtpsecure = 'none';
	public $smtpport = '25';
	public $caching = '0';
	public $cache_handler = 'file';
	public $cachetime = '15';
	public $MetaDesc = '';
	public $MetaKeys = '';
	public $MetaTitle = '1';
	public $MetaAuthor = '1';
	public $MetaVersion = '0';
	public $robots = '';

	public $sef = '0';
	public $sef_rewrite = '0';
	public $sef_suffix = '0';

	public $unicodeslugs = '0';
	public $feed_limit = '10';
	public $feed_email = 'none';
	public $log_path = '/var/www/html/logs';
	public $tmp_path = '/var/www/html/tmp';
	public $lifetime = '15';
	public $session_handler = 'database';
}

