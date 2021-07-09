<?php 

$url = parse_url(getenv("mysql://b3d0545c1dcf9f:bf6fbfcf@us-cdbr-east-04.cleardb.com/heroku_4ba108ecf7e23c6?reconnect=true"));

// DB credentials.
define('DB_HOST',$url["host"]);
define('DB_USER',$url["user"]);
define('DB_PASS',$url["pass"]);
define('DB_NAME',"heroku_4ba108ecf7e23c6");
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>
   