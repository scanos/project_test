<?php
//approve_ip.php
echo "<html> <head>";
$id  =  $_GET["id"];

require("config_tables.php");


if ($validated_ip == "true")

{
session_start();
$user_name = $_SESSION['user_name'];
//echo "<meta HTTP-EQUIV='REFRESH' content='0; url=index.php'>";
$responsible = "seamuskane@aim.com";
require("/var/phpsqlinfo_dbinfo.php");
//require("config_sites.php");

$connection = mysql_connect ($hostname, $username, $password);
if (!$connection) {
  die('Not connected : ' . mysql_error());
}

$db_selected = mysql_select_db($database, $connection);
if (!$db_selected) {
  die ('Can\'t use db : ' . mysql_error());
}

$responsible = htmlspecialchars($responsible);

$description = htmlspecialchars($description);
// userName   | varchar(30)  | NO   |     | NULL    |       || userEmail 
$myquery="update $projects_users SET approved = '1' where id = '$id';" ;
echo $myquery;
 $mainQuery = mysql_query($myquery);
//printf("Last inserted record has id %d\n", mysql_insert_id());
//$id= mysql_insert_id();

$myquery="select * from $projects_users where id = '$id';" ;
echo $myquery;
$mainQuery = mysql_query($myquery);

while ($mainArray = mysql_fetch_array($mainQuery, MYSQL_ASSOC)) {
$user_email=$mainArray['userEmail'];

$sensor_msg = "You have been successfully registered on the site.<a href='".$projects_url."'>Please click here </a>";

$exec_msg="echo '<b>Hello</b> $sensor_msg'";
$exec_msg.="| mail -s  \"$(echo -e \"IP Connection Request Successful\nContent-Type: text/html\")\" $user_email";
$test = shell_exec($exec_msg);
echo "<li>$exec_msg";

}
}

else
{
echo "Insufficient permissions";
}
?>
