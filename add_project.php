<?php

require "../../pdo.php";
$p_ops = $_POST['ops_permit'];
$s_ops = $_SESSION['ops_permit'];
$_SESSION['notification']  = "";
if (strlen($_SESSION['user']) <1){header("Location: login.php");}


if ($p_ops !== $s_ops)
{
$_SESSION['notification'] = " ERROR 101 INVALID ADDITION OPERATION";
header("Location: display_tasks.php");

}

else

{

header("Location: display_tasks.php");

$temp_user= $_SESSION['user'];

$stmt = $pdo->prepare("INSERT INTO ".$projects_table." (description,resolution,owner) VALUES  (:description, :resolution, :owner)");


$stmt->bindParam(':description', $_POST['description'], PDO::PARAM_STR);
$stmt->bindParam(':owner', $temp_user, PDO::PARAM_STR);
$stmt->bindParam(':resolution', $_POST['resolution'], PDO::PARAM_STR);
$stmt->execute();
$p_id = $pdo->lastInsertId();
$_SESSION['notification'] = " NEW PROJECT ADDED SUCCESSFULLY ID $p_id";
$temp_location = "Location: edit_project.php?id=$p_id";

header($temp_location);

}

?>

