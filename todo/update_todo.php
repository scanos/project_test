<?php 
require "../../pdo2.php";
require "../../bootstrap.php";


echo "<meta http-equiv=\"refresh\" content=\"5; URL='index.php'\" />";
if (!empty($_POST))
{
    $description=$_POST['description'];
    $responsible=$_POST['responsible'];
    $duedate=$_POST['datepicker'];
    $id=$_POST['id'];
    $cost=$_POST['cost'];
    $action=$_POST['action'];
    $status=$_POST['status'];


    echo  "<p>status $status id $id cost $cost duedate $duedate description $description responsible $responsible";
 $id_text_query = "update projects.todo set status='$status',action='$action',duedate='$duedate',responsible='$responsible',description='$description',cost='$cost' where id = '$id';";
           
            echo "<p> ".$id_text_query;
            $stmt2 = $pdo->query($id_text_query);
            $stmt2->execute();
            echo "<p>";





}




?>
