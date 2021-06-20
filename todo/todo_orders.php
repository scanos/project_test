<?php 
require "../../pdo2.php";
require "../../todocss.php";
//session_start();
//echo "project ".$_SESSION['pid'];
//$mquery="SELECT description FROM projects.projects where id = '".$_SESSION['pid']."'";
//echo $mquery;
//$stmt3 = $pdo->query("$mquery");
//$stmt3->execute();
//$row = $stmt3->fetch(PDO::FETCH_ASSOC);
//echo " Project Description".$row['description'];


//echo "<p><a href=insert_todo_form.php>Add Record</a>";

echo "<form action='' method='POST'> ";
echo "<label class='heading'>UnActioned:</label>";
echo "<input type='checkbox' onclick='toggle(this);' />Check all?<br />";
//$id_text_query = "select id,description,responsible,action,reg_date,status from projects.todo where status = 0;";
$id_text_query = "select id,risk,description,responsible,action,duedate,DATEDIFF(NOW(),duedate) as tdays,reg_date,status,cost from projects.todo_orders;";
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
                         $cost=$row['cost'];
                         $duedate=$row['duedate'];
                         $tdays=$row['tdays'];
                         $risk=$row['risk'];

			 //if ($status == 1)
                        //{
                         //$checked = "checked";
                        //}
                        //else
                        //{
                         //$checked = "";
                        //}

echo "<p><b>";
$tfont="";
if ($risk == 'big'){
$tfont="red";
$risktext= "R*";
}
else
{
$risktext= "";
}
echo "<font color='$tfont'>$risktext<a href=order_edit.php?todo_id=$id>$id</a></b> Select <input type='checkbox' name='lang[]' value='$inner_counter' ><input type='hidden' id='$id' name='id[]' value='$id'>
description <input type ='text' name='description[]' value='$description' size='30'>  
Notes <input type='text' id='$action' name='langtext[]' value='$action' size='60'> Cost:<input type ='text' name='cost[]' value='$cost' size='5'> 
DueDate: $duedate</font>";

$tfont="green";
if ($status < 1) {echo " OPEN";
                if  ($tdays > 0){$tfont="red";}
                             }else
                             {echo "CLOSED";
                              
                             }
$inner_counter++;

echo "<font color='$tfont'> DAYS $tdays</font>";

}


echo "  <p><input type='submit' value='Submit' name='submit'>";
//var_dump($_POST['langtext']);
//var_dump($_POST['lang']);
//var_dump($_POST['cost']);

$stmt3 = $pdo->query('SELECT SUM(cost) AS value_sum FROM projects.todo');
$stmt3->execute();
$row = $stmt3->fetch(PDO::FETCH_ASSOC);

echo "<li> total costs".$row['value_sum'];



if(isset($_POST['submit']))
{

    if(!empty($_POST['lang'])) 
    {

        foreach($_POST['lang'] as $value)
       {
            $id=$_POST['id'][$value];
            echo "lang value : ".$value.' '.$id.'<br/>';
            $action=$_POST['langtext'][$value];
            $description=$_POST['description'][$value];
            $cost=$_POST['cost'][$value];
   	    $id_text_query = "update projects.todo set action = '$action',description='$description',cost='$cost' where id = '$id';";
            echo "<p> ".$id_text_query;
            $stmt2 = $pdo->query($id_text_query);
            $stmt2->execute();
            echo "<p>";
      }

echo "<button onclick=\"window.location.href=window.location.href; return false;\">Continue</button>";
}
}

?>
