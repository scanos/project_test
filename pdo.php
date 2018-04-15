<?php
// pdo.php - held outside the web root - 2 levels above this directory
ob_start();
session_start();

$host = 'localhost';
$db   = 'projects';
$user = '';
$pass = '';
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
echo "   <a href=show_table.php>Show Tables</a>   <a href=display_tasks.php>Home</a>";

?>
