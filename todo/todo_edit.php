<?php

session_start();
$todo_id =  $_GET["todo_id"];
if (strlen($sensor_id)<1){$sensor_id =$c_sensor;}
else
{
$_SESSION['sensor']=$sensor_id;
}

require "../../pdotodo.php";
require "../../todocss.php";

$myquery="select * from todo where id = '".$todo_id."';";
$stmt = $pdo->query($myquery);

                $stmt->execute();
                while ($row = $stmt->fetch())
                        {
                         $id_text=$row['id_text'];
                         //$UOM=$row['uom'];
		         $description = $row['description'];
//$sub_sensor = $mainArray['sub_sensor'];
			$action = $row['action'];
			$cost= $row['cost'];
			$responsible= $row['responsible'];
                        $duedate= $row['duedate'];
                        $status= $row['status'];
                        $risk= $row['risk'];
                        $start_date= $row['start_date'];
                        $no_of_days= $row['no_of_days'];


//echo "$risk is $risk";
if ($risk = 'low') {$lowselected = 'selected';} else {$highselected = 'selected';}
			//$email= $mainArray['email'];
			//$acknowledged= $mainArray['acknowledged'];
//echo "<li>".$notes;
                              }

//echo "<li><a href=show_status_logs.php?id=$crop_id>Previous</a>"; 
//echo  "<li>Add Notes for $status Log id ".$id;
print <<<END


<div class="form-style-5">
<h2>Change sensor $sensor_id</h2>
<form action="update_todo.php" method="post">
<fieldset>

<legend><span class="number">1</span> Description</legend>
<input type="text" name="description" value="$description" size="50">
</fieldset>


<fieldset>
<legend><span class="number">2</span> Action</legend>
<textarea name="action" rows="10" cols="100">
$action
</textarea>
</fieldset>


<fieldset>
<legend><span class="number">3</span> Responsible</legend>
<input type="text" name="responsible" value="$responsible">
</fieldset>


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
$duedate
</fieldset>



<label for="risk">Risk Status:</label>
<select id="risk" name="risk">
  <option value="big" $highselected>big</option>
  <option value="low" $lowselected>low</option>
</select>


<legend><span class="number">4</span>Cost</legend>
<input type="text" name="cost" value="$cost">
</fieldset>
<input type="hidden" name="status" value="0">

status $status
<div>
    <input type="checkbox" id="status" name="status" value="1" 
END;

if ($status>0){echo "checked";}
else
{
echo "";
}

PRINT <<< END

><label for="status">Task Completed</label>
  </div>
  <div>

<input type="hidden" name="id" value="$todo_id">

<input type="submit" value="Update" />
</form>
</div>



END;








?>



