<?php 
require "../../pdo2.php";
require "../../bootstrap.php";
//echo "<meta http-equiv=\"refresh\" content=\"0; URL='checklist2.php'\" />";

echo "<p>post ".$_POST[''];
echo " get ".$_GET[''];

echo "<form action='' method='POST'> ";
echo "<p><label class='heading'>Add Action</label>";
echo "<p>Description <input type ='text' name='insert_description' value='' size='50'>";  
echo "<p>Responsible <input type='text'  name='insert_responsible' value=''>";
echo " <p><input type='submit' value='Submit' name='insert_submit'>";


echo "<form action='' method='POST'> ";
echo "<label class='heading'>UnActioned:</label>";
$id_text_query = "select id,description,responsible,action,reg_date,status from projects.todo where status = 0;";
$stmt = $pdo->query($id_text_query);
                $stmt->execute();
                while ($row = $stmt->fetch())
                        {
                         $id=$row['id'];
                         $description=$row['description'];
                         $reg_date=$row['reg_date'];
                         $action=$row['action'];
echo "<p><b>$id</b> Action completed <input type='checkbox' name='lang[]' value=''><input type='hidden' id='$id' name='id[]' value='$id'>
description <input type ='text' name='description' value='$description' readonly size='50'>  action <input type='text' id='$action' name='langtext[]' value=''>";
}
echo "  <p><input type='submit' value='Submit' name='submit'>";

if(isset($_POST['submit']))
{

    if(!empty($_POST['lang'])) 
    {
    $test_lang=$_POST['lang'];
    $testarray=$_POST['langtext'];
    $testmid_array=$_POST['m_id'];
    $testid_array=$_POST['id'];
    echo "<p> textbox array";
    $testarray2[] = "";
    $testarrayid[] = "";

    foreach ($testarray as $key => $value) {
    	if (strlen($value) > 0 ) {
     		array_push($testarray2,$value);
     		array_push($testarrayid,$testid_array[$key]);
		     		}
  					    } 
    

    foreach ($_POST['lang'] as $key => $value) {
    $textkey=$key+1;
    echo "<p>{$key} => {$value} $testarray2[$textkey] $testmid_array[$textkey] id is $testarrayid[$textkey]";
    echo "<p>";
       						}
    }
 $_POST = array();
 echo "<button onclick=\"window.location.href=window.location.href; return false;\">Continue</button>";

}


if(isset($_POST['insert_submit']))
{   
    if(!empty($_POST['insert_description']))
    {
     //echo "<h1> Record Added ";
    $insert_query = "insert into projects.todo (description,responsible) values ('".$_POST['insert_description']."','".$_POST['insert_responsible']."');";
    echo "<p>$insert_query";
    $stmt = $pdo->query($insert_query);
    $stmt->execute();
    $_POST = array();
    echo "post ".$_POST;
    echo "<button onclick=\"window.location.href=window.location.href; return false;\">Continue</button>";
   }
}


?>
