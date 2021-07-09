<?php 


// DB credentials.
define('DB_HOST',"us-cdbr-east-04.cleardb.com");
define('DB_USER',"b3d0545c1dcf9f");
define('DB_PASS',"bf6fbfcf");
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
   