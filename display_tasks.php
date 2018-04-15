<?php

//ob_start();
//session_start();
//$_SESSION['user'];
//echo "<li> id".$_POST['id']; 
require "../../pdo.php";

$inner_user = $_SESSION['user'];
if (strlen($_SESSION['user']) <1){header("Location: login.php");}

echo "<p>post pid ".$_POST['id'];
//if (strlen($_SESSION['pid']) <1){$_SESSION['pid'] = $_POST['pid'];}


if ((strlen($_POST['id']) >0) && ($_POST['id'] <> $_SESSION['pid'])) 
								{
echo"<li> PROJECT ID BEING CHANGED";

		$_SESSION['pid'] = $_POST['id'];
		$temp_pid=$_POST['id'];
                $stmt = $pdo->query('SELECT description FROM '.$projects_table.'  WHERE  id = :project_id');
                $stmt->bindParam(':project_id',$temp_pid, PDO::PARAM_INT);
                $stmt->execute();
                while ($row = $stmt->fetch())
                        {
                        $_SESSION['project'] = $row['description'];
                        echo " ".$row['description'];
                        $_SESSION['pid'] = $temp_pid;

                        }



								}

echo "<hr><h1> PROJECTS </h1>";

echo "<p> Current project <b> ".$_SESSION['project']."</b>" ;
echo " (To View  <a href=edit_project.php?id=".$_SESSION['pid']."><img src='eye.png' width='32' height='32'></a>)   ";

//echo "<p>QUICK ADD NEW PROJECT ";
echo "<form action='add_project.php' method='post'> ";
echo "<p>QUICK ADD NEW PROJECT ---------";
echo"Description <input type='text' name='description'> ";
echo " <input type='submit' value='submit'></form>";

echo  "<form action='display_tasks.php' method= 'post'>";
echo " Select a Project----------";
echo "Open tasks for all projects <input type='checkbox' id='open_tasks' name='open_tasks' value='open_tasks'>";
echo"<select name='id'>";

$stmt = $pdo->query('SELECT * FROM '.$projects_table.' WHERE owner = :owner');
 $stmt->bindParam(':owner', $inner_user, PDO::PARAM_STR);


//$stmt = $pdo->query('SELECT * FROM '.$projects_table.'');
$stmt->execute();
$form_project=$_SESSION['project'];
while ($row = $stmt->fetch())
        {
                $test_id= $row['id'];
		$test_name= $row['description'];
                echo "<option value='".$test_id."'";
                if ($form_project == $test_name){echo " selected";}
                echo ">P".$test_id." ".$test_name."</option>";

        }

//echo " <input type = 'hidden' name='project_name' value = '".$test_name."'>";
echo " </select><input type='submit' value='select'></form>";

echo "</form>";




$tempid = $_POST['id'];
$open_tasks= $_POST['open_tasks'];

//if (strlen($open_tasks)>0){$sql_add = " AND status = 1";}
if (strlen($tempid)==0 && $_SESSION['pid'] >0){$tempid=$_SESSION['pid'] ;}

if (strlen($tempid)>0)
		{
echo "<hr><h1> TASKS </h1>";
echo "<p> List of  tasks for <b>P".$_SESSION['pid']." ".$_SESSION['project']."</b>";
echo "<table border='1'style='font-family:sans-serif;' >";
echo  "<tr style='font-weight:bold'><td>View</td><td>Days OD</td><td>Start Date</td><td>Due By</td>	<td>task id</td><td>pid</td><td>Description</td><td>Completed</td><td>Comments</td><td>Owner</td></tr>";

  


if (strlen($open_tasks) >0)
{
$stmt = $pdo->query('SELECT DATEDIFF(NOW(),due_date) as days,start_date,due_date,added_by,id,project_id,description,status,resolution FROM '.$tasks_table.' WHERE project_id = :project_id AND status = FALSE OR ISNULL(status)');
}
else
{
$stmt = $pdo->query('SELECT DATEDIFF(NOW(),due_date) as days,start_date,due_date,added_by,id,project_id,description,status,resolution FROM '.$tasks_table.'  WHERE  project_id = :project_id');
}

		$stmt->bindParam(':project_id', $tempid, PDO::PARAM_INT);
		$stmt->execute();

echo "<p><form action='add_task.php' method='post'> QUICK ADD NEW TASK ----Description <input type='text' name='description'> Comments <input type='text' name='resolution'>";
echo " <input type = 'hidden' name='project_id' value = '".$_SESSION['pid']."'><input type='submit' value='submit'></form>";

while ($row = $stmt->fetch())
	{
echo "<tr>";    
echo "<td><a href=edit_task.php?id=".$row['id']."><img src='eye.png' width='32' height='32'></a></td><td>";
if ($row['status'] == 1) {echo "---------</td>";}else{echo $row['days']."</td>";}
echo "<td>".$row['start_date']."</td><td>".$row['due_date']."</td><td>".$row['id'];
echo "</td></td><td>".$row['project_id']."<td>".$row['description']."</td><td>";

if ($row['status'] == 1){echo "<img src='tick.gif' width='42' height='42'>";}
echo "</td><td>".substr($row['resolution'],0,30)."----</td><td>".$row['added_by']."</td>";
echo "</tr>";

	}

echo "</table>";

  }
                else
                {
                //$stmt = $pdo->query('SELECT id,project_id,description,status,resolution FROM CMP_logs');
			echo "";
                }


?>
