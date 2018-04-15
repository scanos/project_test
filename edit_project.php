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
            $("#datepicker2").datepicker({ dateFormat: "yy-mm-dd", changeMonth: true, changeYear: true });
        });
  </script>


</head>
<?php

require "../../pdo.php";
session_start();
if (strlen($_SESSION['user']) <1){header("Location: login.php");}

$id = trim($_GET['id']);
$id = strip_tags($id);
$id = htmlspecialchars($id);
//$_SESSION['project']= $id;

$stmt = $pdo->prepare("SELECT DATE_FORMAT(start_date, '%d %b %Y') as start_date,description,resolution,status,id,owner,
DATE_FORMAT(due_date, '%d %b %Y') as in_date from ".$projects_table." where id = (?)");

 $stmt->execute([$id]);

while ($row = $stmt->fetch())
{
$description = $row['description'];//echo "<li> des".$description ;
$_SESSION['project']= $description;
$_SESSION['pid']= $id;

//$responsible = $row['responsible'];echo "<li> ".$description ;
$resolution = $row['resolution'];//echo "<li> res".$resolution ;
$status= $row['status'];//echo "<li> status".$status ;
//$category= $row['category'];
$due_date= $row['in_date'];//echo "<li>".$due_date;
//$due_date = date('Y-m-d');
$start_date= $row['start_date'];//echo "<li>".$due_date;


$owner= $row['owner'];//echo "<li> status".$owner ;

//$criticality= $row['criticality'];
echo "<select>";
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
}


PRINT <<< END
<div class="form-style-5">
<h2>Project $description ($id)</h2>
<form action="update_projects.php" method="post">

<fieldset>
<legend><span class="number"></span> Description</legend>
<input type="text" name="description" value="$description" size="55">
</fieldset>

<fieldset>
<legend><span class="number"></span> Owner</legend>
$owner
</fieldset>

<fieldset>
<legend><span class="number">3</span>Start Date</legend>
<input type="text" name="datepicker" id="datepicker" value="$start_date">
</fieldset>


<fieldset>
<legend><span class="number">3</span>Due Date</legend>
<input type="text" name="datepicker2" id="datepicker2" value="$due_date">
</fieldset>

<fieldset>
<legend><span class="number">4</span>Comments</legend>
<textarea rows="10" cols="100" name="resolution" id="resolution" value="$resolution">
$resolution</textarea>
</fieldset>

<input type ='hidden'name="id" value=$id>

<div>
<input type="checkbox" id="status" name="status" value="CLOSED" 
END;

if ($status=="CLOSED"){echo "checked";}

PRINT <<< END

><label for="status">Task Completed</label>
  </div>
  <div>
END;


                                echo"<div class='form-group'> <button type='submit' class='btn btn-block btn-primary' name='btn-signup'";
                                echo ">Update</button></div>";
                                echo "</form>";

//$max_sql ="SELECT MAX(due_date) as maxdays FROM '".$tasks_table."' WHERE  project_id = :project_id";
//echo "<li>".$max_sql." "; 





$stmt = $pdo->prepare('SELECT MAX(start_date) as maxdays FROM '.$tasks_table.'  WHERE  project_id = :project_id');
//$stmt = $pdo->prepare($max_sql);
                $stmt->bindParam(':project_id', $id, PDO::PARAM_INT);
                $stmt->execute();

$maxdays = $stmt->fetchColumn();
//echo "<li> max days ".$maxdays;

$stmt = $pdo->prepare('SELECT MIN(start_date) as mindays FROM '.$tasks_table.'  WHERE  project_id = :project_id');
                $stmt->bindParam(':project_id', $id, PDO::PARAM_INT);
                $stmt->execute();

$mindays = $stmt->fetchColumn();

$datetime1 = date_create($mindays);
$datetime2 = date_create($maxdays);
//echo "<li>  ".$mindays." ". $maxdays;
$interval = date_diff($datetime1, $datetime2);
//$interval = date_diff($mindays, $maxdays);
//echo $interval->format('%R%a days');
//echo "<li>max ".$maxdays." min ".$mindays."<p>";


        //$interval = date_diff($datetime1, $datetime2);
        $temp_interval = intval($interval->format('%a')) + 0 ;
        $canvas_length= (1200/(intval($temp_interval)+0));
        $canvas_length = $canvas_length*(intval($temp_interval));





$start    = new DateTime($mindays);
$start->modify('first day of this month');
$end      = new DateTime($maxdays);
$end->modify('first day of next month');
$interval = DateInterval::createFromDateString('1 month');
$period   = new DatePeriod($start, $interval, $end);
$month_stack = array();
$month_stack_name = array();

foreach ($period as $dt) {
   // echo "  <li>dt ". $dt->format("Y-m-d");
$testxxxx = $dt->format("Y-m-d");
$date2=date_create($testxxxx);
$nn_interval = date_diff($datetime1, $date2);
$month_interval = date_diff($datetime1, $testdate1);
//echo" diff ".$nn_interval->format('%R%a days');
array_push($month_stack,$nn_interval->format('%a'));
$temp_date_str1=$dt->format("M")." ".$dt->format("y");
//array_push($month_stack_name,$dt->format("M") );
array_push($month_stack_name,$temp_date_str1 );

			}

//print_r($month_stack_name);
$removedM = array_shift($month_stack);
//$removedMtxt = array_shift($month_stack_name);

//$month_stack = array_shift($month_stack);

	//foreach ($removedM as $v) 	{
    					//echo "Current value of \$month_stack: $v. \n";
	//				}





$stmt = $pdo->query('SELECT DATEDIFF(NOW(),due_date) as days,no_of_days,start_date,due_date,added_by,id,project_id,
description,status,resolution FROM '.$tasks_table.'  WHERE  project_id = :project_id');
                $stmt->bindParam(':project_id', $id, PDO::PARAM_INT);
                $stmt->execute();


echo "<canvas id='mycanvas' width='$canvas_length' height='400' style='border:1px solid #d3d3d3;'>";
echo"Your browser does not support the HTML5 canvas tag.</canvas>";


$canvas_y=40;
$canvas_text= 30;
$sm_x=0;

while ($row = $stmt->fetch())
        {// while 2

	$con_desc="(".$row['id'].") ".$row['description'];
        $temp_date=$row['start_date'];
	$my_month = date(' t ', strtotime($temp_date) );
	$my_day = date(' d ', strtotime($temp_date) );
        $temp_date=date_create($temp_date);
        $month_end_diff = $my_month-$my_day;
	$interval = date_diff($datetime1, $datetime2);
	$temp_interval = intval($interval->format('%a')) + 0 ;
	$canvas_length= (800/(intval($temp_interval)+0));
	$canvas_length = $canvas_length*(intval($temp_interval));
	$start_point= date_diff($datetime1, $temp_date);
	$start_point =intval(($start_point->format('%a')) * $canvas_length/$temp_interval);
	$no_of_days=$row['no_of_days']*($canvas_length/$temp_interval);
	$end_point=$start_point+$no_of_days;
	if($row['status'] == 1){$status_color = 'GREEN';} else {$status_color='RED';}	


PRINT <<< END

<script>
      var canvas = document.getElementById('mycanvas');
      var context = canvas.getContext('2d');
      context.beginPath();
      context.moveTo($start_point, $canvas_y);
      context.lineWidth=10;
      context.strokeStyle= "$status_color";
      context.lineTo($end_point, $canvas_y);

	context.font="15px Arial";
	context.fillText("$con_desc",$start_point,$canvas_text);
	context.stroke();
</script>
END;

$canvas_y += 40;
$canvas_text += 40;

}

$sm_x=0;
echo "<script>";
foreach ($month_stack as $value) {

        $temo_mon_x = $month_stack_name[$sm_x+1];
        $v = $value * ($canvas_length/$temp_interval);

PRINT <<< END
        context.beginPath();
        context.moveTo($v,0);
        context.lineWidth=3;
        context.strokeStyle= "black";
        context.font="15px Arial";
        context.fillText("$temo_mon_x",$v+60,10);
        context.lineTo($v, 800);
        context.stroke();
END;

                        $sm_x+=1;
                                }
echo "</script>";                
?>


