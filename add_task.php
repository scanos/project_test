
<?php
require "../../pdo.php";
if (strlen($_SESSION['user']) <1){header("Location: login.php");}


$temp_user= $_SESSION['user'];
echo $_POST['description']."".$_POST['project_id']."".$_POST['resolution']." temp user ".$temp_user;

$stmt = $pdo->prepare("INSERT INTO ".$tasks_table." (resolution,description,project_id,added_by) VALUES  (:resolution, :description, :project_id, :added_by)");
//$stmt = $pdo->prepare("INSERT INTO CMP_logs (resolution,description,project_id) VALUES  (:resolution, :description, :project_id)");


$stmt->bindParam(':description', $_POST['description'], PDO::PARAM_STR);
$stmt->bindParam(':project_id', $_POST['project_id'], PDO::PARAM_INT);
$stmt->bindParam(':resolution', $_POST['resolution'], PDO::PARAM_STR);
$stmt->bindParam(':added_by', $temp_user, PDO::PARAM_STR);

$stmt->execute();
?>

