<?php 
require "../../pdo2.php";
require "../../todocss.php";


echo "<meta http-equiv=\"refresh\" content=\"1; URL='index.php'\" />";
if (!empty($_POST))
{
    // handle post data
 //   $fromPerson = '+from%3A'.$_POST['fromPerson'];
  //  echo $fromPerson;


// $insert_query = "insert into projects.todo (description,responsible) values ('".$_POST['insert_description']."','".$_POST['insert_responsible']."');";
    //echo "<p>$insert_query";
    $description=$_POST['insert_description'];
    $responsible=$_POST['insert_responsible'];
    echo  "<p>$description $responsible";
    $stmt = $pdo->query("insert into projects.todo (description,responsible) values ('$description','$responsible')");
    $stmt->execute();
    //$stmt = $pdo->query('select description,sdate,id_text,scount,smax,smin,savg,notes from summary_sensors');
   // $stmt->close();

}




?>
