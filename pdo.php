
<?php
// pdo.php - should be stored 2 levels above apps folder e.g. place in /var if apps in /var/www/html
ob_start();
session_start();

$_SESSION['ops_permit'] = '126734569C23r45rre';
// used to ensure that form ops are not open to database injection



$host = 'localhost';
$db   = 'projects';
$user = 'root';
$pass = '92Dufferin#';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
$pdo = new PDO($dsn, $user, $pass, $opt);

function noHTML($input, $encoding = 'UTF-8')
{
    return htmlentities($input, ENT_QUOTES | ENT_HTML5, $encoding);
}

$tasks_table = "tasks";
$projects_table = "projects";
//ob_start();
//session_start();

echo "<p>".$_SESSION['user']."  <a href=index.php?logout=true>logout</a>";
echo "   <a href=show_table.php>Show Tables</a>   <a href=display_tasks.php>Home</a>  <a href=task_list.php>tasks documentor</a>";
echo "<p><font color='green'>".$_SESSION['notification']."</font>";
// notification codes
//ERROR 101 INVALID ADDITION OPERATION

?>


