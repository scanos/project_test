<?php 
require "../../pdo2.php";
//require "../../bootstrap.php";
//echo "<meta http-equiv=\"refresh\" content=\"0; URL='index.php'\" />";
require "../../todocss.php";


echo "<form action='insert_todo.php' method='POST'> ";
echo "<p><label class='heading'>Add Action</label>";
echo "<p>Description <input type ='text' name='insert_description' value='' size='50'>";
echo "<p>Responsible <input type='text'  name='insert_responsible' value=''>";
echo " <p><input type='submit' value='Submit'>";
?>
