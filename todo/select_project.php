<?php 
require "../../pdo2.php";
require "../../todocss.php";
//ob_start();
session_start();


echo "<p><a href=insert_todo_form.php>Add Record</a>";

echo "<form action='' method='POST'> ";

echo "<label for='projects'>Choose a project:</label><select name='projects' id=projects'>";

//$id_text_query = "select id,description,responsible,action,reg_date,status from projects.todo where status = 0;";
//$id_text_query = "select id,description,responsible,action,duedate,DATEDIFF(NOW(),duedate) as tdays,reg_date,status,cost from projects.todo;";
$id_text_query = "select id,description,owner,duedate,DATEDIFF(NOW(),duedate) as tdays from projects.projects;";


$inner_counter=0;
$stmt = $pdo->query($id_text_query);
                $stmt->execute();
                while ($row = $stmt->fetch())
                        {
                         $id=$row['id'];
                         $description=$row['description'];
  echo"<option value='$id'>$description</option>";
                         //$checked = "";
                        //}
//echo "<p><b><a href=todo_edit.php?todo_id=$id>$id</a></b> Select <input type='checkbox' name='lang[]' value='$inner_counter' ><input type='hidden' id='$id' name='id[]' value='$id'>
//description <input type ='text' name='description[]' value='$description' size='30'>  
//Notes <input type='text' id='$action' name='langtext[]' value='$action' size='60'> Cost:<input type ='text' name='cost[]' value='$cost' size='5'> 
//DueDate: $duedate";

//$tfont="green";
//if ($status < 1) {echo " OPEN";
//                if  ($tdays > 0){$tfont="red";}
//                             }else
//                             {echo "CLOSED";
 //                             
  //                           }
//$inner_counter++;

//echo "<font color='$tfont'> DAYS $tdays</font>";

}
echo "</select>";


echo "  <p><input type='submit' value='Submit' name='submit'>";
//var_dump($_POST['langtext']);
//var_dump($_POST['lang']);
//var_dump($_POST['cost']);

//$stmt3 = $pdo->query('SELECT SUM(cost) AS value_sum FROM projects.todo');
//$stmt3->execute();
//$row = $stmt3->fetch(PDO::FETCH_ASSOC);

//echo "<li> total costs".$row['value_sum'];



if(isset($_POST['submit']))
{
$pid=$_POST['projects'];
echo "<p>project ".$pid; 

//$stmt3 = $pdo->query('SELECT SUM(cost) AS value_sum FROM projects.todo');
//$stmt3->execute();
//$row = $stmt3->fetch(PDO::FETCH_ASSOC);

$mquery="SELECT description FROM projects.projects where id = '".$pid."'";
//echo $mquery;
$stmt3 = $pdo->query("$mquery");
$stmt3->execute();
$row = $stmt3->fetch(PDO::FETCH_ASSOC);
echo " Description".$row['description'];
$_SESSION['pid']=$pid;

echo "<p><button onclick=\"window.location.href=window.location.href; return false;\">Continue</button>";
}

?>
