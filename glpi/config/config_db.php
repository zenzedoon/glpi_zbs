<?php
class DB extends DBmysql {
   public $dbhost = 'mysql';
   public $dbuser = 'glpi_user';
   public $dbpassword = 'passwd';
   public $dbdefault = 'glpidb';
   public $use_utf8mb4 = true;
   public $allow_myisam = false;
   public $allow_datetime = false;
   public $allow_signed_keys = false;
}
