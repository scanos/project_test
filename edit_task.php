<head>
<link rel="stylesheet" type="text/css" href="form.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Edit Issue</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>

$(function () {
            $("#datepicker").datepicker({ dateFormat: "yy-mm-dd", changeMonth: true, changeYear: true });
        });
  </script>

<script>
$(function () {
            $("#datepicker1").datepicker({ dateFormat: "yy-mm-dd", changeMonth: true, changeYear: true });
        });
  </script>

</head>
<?php

require "../../pdo.php";
//session_start();
if (strlen($_SESSION['user']) <1){header("Location: login.php");}

$id = trim($_GET['id']);
$id = strip_tags($id);
$id = htmlspecialchars($id);
$stmt = $pdo->prepare("SELECT * from ".$tasks_table." where id = (?)");

 $stmt->execute([$id]);

while ($row = $stmt->fetch())
{
$description = $row['description'];
$responsible = $row['responsible'];
$resolution = $row['resolution'];
$status= $row['status'];
$category= $row['category'];
$due_date= $row['due_date'];
$project_id= $row['project_id'];
$criticality= $row['criticality'];
$start_date= $row['start_date'];
$no_of_days= $row['no_of_days'];
$dependency= $row['dependency'];

}

PRINT <<< END
<div class="form-style-5">
<h2>Update Issue $id</h2>
<form action="update_tasks.php" method="post">

<fieldset>
<legend><span class="number"></span> ID $id</legend>
</fieldset>


<fieldset>
<legend><span class="number">1</span> Description</legend>
<input type="text" name="description" value="$description" size="60">
</fieldset>
<p> Responsible

<select>

END;

$stmt = $pdo->query('select name from PDO_users');
$stmt->execute();

while ($row = $stmt->fetch())
	{
		$test_name= $row['name'];
		echo "<option value='".$test_name."'";
		if ($responsible == $test_name){echo " selected";}
		echo ">".$test_name."</option>";

	}



echo "</select>";

echo "<p> Dependency task $dependency -- Modify dependency -- <select name='dependency'>";
if ($dependency< 1)
{
echo "<option value ='' selected>Dependent Task </option>";
}

$stmt = $pdo->query('select id,description from '.$tasks_table.' where project_id = (?)');
$stmt->execute([$project_id]);

while ($row = $stmt->fetch())
        {
                $t_dependency= $row['id'];
		if ($row['id'] <> $id)
			{
                	echo "<option value='".$t_dependency."'";
                	if ($dependency == $t_dependency){echo " selected";}
                	echo ">Task ".$row['id']."  ".$row['description']."</option>";
			}
        }
echo "</select>";


PRINT <<< END
 -- Remove dependency <input type="checkbox" id="clear_dependency" name="clear_dependency" value="1">

<fieldset>
<legend><span class="number">3</span>Start Date</legend>
<input type="text" name="datepicker" id="datepicker" value="$start_date">
</fieldset>

<fieldset>
<legend><span class="number">4</span>Duration of task(d) </legend>
<input type="text" name="no_of_days" id="no_of_days" value="$no_of_days" size="3">
</fieldset>


<fieldset>
<legend><span class="number">3</span>Due Date</legend>
$due_date
</fieldset>



<fieldset>
<legend><span class="number">4</span>Resolution</legend>
<textarea rows="10" cols="70" name="resolution" id="resolution">
$resolution</textarea>
</fieldset>

<input type ='hidden'name="id" value=$id>

<div>
    <input type="checkbox" id="status" name="status" value="1" 
END;

if ($status==1){echo "checked";}

PRINT <<< END

><label for="status">Task Completed</label>
  </div>
  <div>
END;


                                echo"<div class='form-group'> <button type='submit' class='btn btn-block btn-primary' name='btn-signup'";
                                echo ">Submit</button></div>";
                                echo "</form>";


?>


