<?php
require "../../pdo.php";
if (strlen($_SESSION['user']) <1){header("Location: login.php");}

//echo "<li>res ".$_POST['resolution'];
//echo "<li>desc ".$_POST['description'];
//echo "<li>status ".$_POST['status'];

 
//echo " <li>id";
//echo $_POST['id'];
//echo " ";
//echo  "<li>".$my_date;
//echo  "<li>".$_POST['datepicker'];
//echo "<li> projects table ".$projects_table;
//$stmt = $pdo->prepare("UPDATE ".$projects_table." set description = :description,resolution = :resolution,status = :status,due_date =:due_date WHERE  id = :id");

$stmt = $pdo->prepare("UPDATE ".$projects_table." set start_date =:start_date,description = :description,resolution = :resolution,due_date = :due_date,status = :status  WHERE  id = :id");
$stmt->bindParam(':id', $_POST['id'], PDO::PARAM_INT);       
$stmt->bindParam(':status', $_POST['status'], PDO::PARAM_STR);
$stmt->bindParam(':description', $_POST['description'], PDO::PARAM_STR);
$stmt->bindParam(':resolution', $_POST['resolution'], PDO::PARAM_STR);




$my_date = $_POST['datepicker'];
//echo  "<li>".$my_date;
$my_date = date('Y-m-d H:i:s');
//echo  "<li>".$my_date;


$my_date = $_POST['start_datepicker'];
$my_date = date('Y-m-d H:i:s');


$stmt->bindParam(':due_date', $_POST['datepicker2'], PDO::PARAM_STR);
$stmt->bindParam(':start_date', $_POST['datepicker'], PDO::PARAM_STR);

$stmt->execute();

?>
