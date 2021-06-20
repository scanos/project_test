<?php
//$sensor_id  =  $_GET["sensor_id"];
//$clientid = $_GET["clientid"];


session_start();
//$c_sensor = $_SESSION['sensor'];
$todo_id =  $_GET["todo_id"];
if (strlen($sensor_id)<1){$sensor_id =$c_sensor;}
else
{
$_SESSION['sensor']=$sensor_id;
}

require "../../pdo2.php";
require "../../todocss.php";

$myquery="select * from todo_orders where id = '".$todo_id."';";
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
                        $progress= $row['progress'];
//echo "$risk is $risk";
//if ($risk = 'low') {$lowselected = 'selected';} else {$highselected = 'selected';}
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


<div class='form-group'>
<label for='datepicker'>Due Date:</label>
<input class='form-control' type='text' placeholder='Enter Due Date' value='$duedate' name='datepicker' id='datepicker' />
</div>


<label for="progress">Order Status:</label>
<select id="progress" name="progress">
END;



$id_text_query = "select description as order_status from projects.order_status;";
$stmt2 = $pdo->query($id_text_query);
                $stmt2->execute();
                while ($row = $stmt2->fetch())
                        {
                       
                        $order_status=$row[order_status];
                        echo "<option value='".$order_status."' ";
                        if ($order_status == $progress) 
                        {echo "selected";}
                        echo ">".$order_status."</option>"; 
                        }



print <<<END

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



