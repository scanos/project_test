<?php 
require "../../pdo2.php";
require "../../bootstrap.php";
echo "<p><a href=insert_todo_form.php>Add Record</a>";

echo "<form action='' method='POST'> ";
echo "<label class='heading'>UnActioned:</label>";
//$id_text_query = "select id,description,responsible,action,reg_date,status from projects.todo where status = 0;";
$id_text_query = "select id,description,responsible,action,reg_date,status from projects.todo;";
$inner_counter=0;
$stmt = $pdo->query($id_text_query);
                $stmt->execute();
                while ($row = $stmt->fetch())
                        {
                         $id=$row['id'];
                         $description=$row['description'];
                         $reg_date=$row['reg_date'];
                         $action=$row['action'];
                         $status=$row['status'];
			 if ($status == 1)
                        {
                         $checked = "checked";
                        }
                        else
                        {
                         $checked = "";
                        }
echo "<p><b>$id</b> Action completed <input type='checkbox' name='lang[]' value='$inner_counter' $checked><input type='hidden' id='$id' name='id[]' value='$id'>
description <input type ='text' name='description' value='$description' readonly size='50'>  Notes <input type='text' id='$action' name='langtext[]' value='$action' size='50'>";
$inner_counter++;
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
    $action = $testarray2[$textkey];
    $id=$testarrayid[$textkey];
    //echo "<p>{$key} => {$value} $testarray2[$textkey] $testmid_array[$textkey] id is $testarrayid[$textkey]";
    echo "<p>{$key} => {$value} $testarray2[$textkey] $action id is $id";

    $id_text_query = "update projects.todo set action = '$action',status = '1' where id = '$id';";
    echo "<p> ".$id_text_query;
    $stmt2 = $pdo->query($id_text_query);
    $stmt2->execute();


    echo "<p>";
       						}
    }
// $_POST = array();
// echo "<button onclick=\"window.location.href=window.location.href; return false;\">Continue</button>";



echo "<button onclick=\"window.location.href=window.location.href; return false;\">Continue</button>";
}


?>
