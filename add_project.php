<?php

require "../../pdo.php";
echo $_POST['ops_permit'];
echo $_SESSION['ops_permit'];
if (strlen($_SESSION['user']) <1){header("Location: login.php");}

if ($_POST['ops_permit'] != $_SESSION['ops_permit'])
{
$_SESSION['notification'] = " ERROR 101 INVALID ADDITION OPERATION";
header("Location: display_tasks.php");

}

else

{
$temp_user= $_SESSION['user'];

$stmt = $pdo->prepare("INSERT INTO ".$projects_table." (description,resolution,owner) VALUES  (:description, :resolution, :owner)");


$stmt->bindParam(':description', $_POST['description'], PDO::PARAM_STR);
$stmt->bindParam(':owner', $temp_user, PDO::PARAM_STR);
$stmt->bindParam(':resolution', $_POST['resolution'], PDO::PARAM_STR);
//$stmt->bindParam(':due_date', $_POST['datapicker'], PDO::PARAM_STR);

$stmt->execute();

}




?>

