<?php
//add this liine to pdo.php
//echo "   <a href=show_table.php>Show Tables</a>   <a href=display_tasks.php>Home</a><a href=task_list.php>tasks documentor</a>";

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


echo "<p> Current project <b> ".$_SESSION['project']."</b>" ;

$tempid = $_POST['id'];
$open_tasks= $_POST['open_tasks'];

if (strlen($tempid)==0 && $_SESSION['pid'] >0){$tempid=$_SESSION['pid'] ;}

if (strlen($tempid)>0)
		{
echo "<hr><h1> TASKS </h1>";
echo "<p> List of  tasks for <b>P".$_SESSION['pid']." ".$_SESSION['project']."</b>";
echo "<table border='1'style='font-family:sans-serif;' >";

  


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


while ($row = $stmt->fetch())
	{
echo "<tr>";    
echo "<td><b>".$row['id']."____".$row['description']."</b></td><td><tr>";

echo "<td>".$row['resolution']."----</td>";
echo "</tr><tr></tr>";

	}

echo "</table>";

  }
                else
                {
			echo "";
                }


?>
