<?php

$webrootPath = '/home/dev/webroot/';
// HTTP
define('HTTP_SERVER', 'http://localhost/npshop/admin/');
define('HTTP_CATALOG', 'http://localhost/npshop/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/npshop/admin/');
define('HTTPS_CATALOG', 'http://localhost/npshop/');

// DIR
define('DIR_APPLICATION', $webrootPath . 'npshop/admin/');
define('DIR_SYSTEM', $webrootPath . 'npshop/system/');
define('DIR_LANGUAGE', $webrootPath . 'npshop/admin/language/');
define('DIR_TEMPLATE', $webrootPath . 'npshop/admin/view/template/');
define('DIR_CONFIG', $webrootPath . 'npshop/system/config/');
define('DIR_IMAGE', $webrootPath . 'npshop/image/');
define('DIR_CACHE', $webrootPath . 'npshop/system/cache/');
define('DIR_DOWNLOAD', $webrootPath . 'npshop/system/download/');
define('DIR_UPLOAD', $webrootPath . 'npshop/system/upload/');
define('DIR_LOGS', $webrootPath . 'npshop/system/logs/');
define('DIR_MODIFICATION', $webrootPath . 'npshop/system/modification/');
define('DIR_CATALOG', $webrootPath . 'npshop/catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'tgadmin');
define('DB_PASSWORD', 'passw0rd');
define('DB_DATABASE', 'npshopdb');
define('DB_PORT', '3306');
define('DB_PREFIX', 'np_');
