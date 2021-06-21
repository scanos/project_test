<?php

require "../../pdo.php";
require "../../title.php";
require "../../bootstrap.php";
session_start();
if (strlen($_SESSION['user']) <1){header("Location: login.php");}

$month_stack = array("0");
$month_stack_name = array();
$dependency_links = array();

//$id = trim($_GET['id']);
//$id = strip_tags($id);
//$id = htmlspecialchars($id);
$id = $_SESSION['pid'];

//$_SESSION['project']= $id;

$stmt = $pdo->prepare("SELECT objectives,version,DATE_FORMAT(start_date, '%d %b %Y') as start_date,due_date,description,resolution,status,id,owner,
DATE_FORMAT(due_date, '%d %b %Y') as in_date from ".$projects_table." where id = (?)");

 $stmt->execute([$id]);

while ($row = $stmt->fetch())
{
$description = $row['description'];//echo "<li> des".$description ;
$_SESSION['project']= $description;
$_SESSION['pid']= $id;
$project_end_date = $row['due_date'];
$resolution = $row['resolution'];//echo "<li> res".$resolution ;
$status= $row['status'];//echo "<li> status".$status ;
$due_date= $row['in_date'];//echo "<li>".$due_date;
$start_date= $row['start_date'];//echo "<li>".$due_date;
$owner= $row['owner'];//echo "<li> status".$owner ;
$my_version = $row['version'];
$objectives = $row['objectives'];


}


echo "<p> EDIT TASKS  "; 
$count_tasks=0;
$stmt = $pdo->prepare('SELECT id FROM '.$tasks_table.'  WHERE  project_id = :project_id');
//$stmt = $pdo->prepare($max_sql);
                $stmt->bindParam(':project_id', $id, PDO::PARAM_INT);
                $stmt->execute();


                while ($row = $stmt->fetch())
                        {
                        
                        echo "<a href=edit_task.php?id=".$row['id'].">";
                        echo $row['id']."</a>  ";
			$count_tasks+=1;

                        }

$canvas_height = ($count_tasks * 50)+30;
// added sk 21/4/18




$stmt = $pdo->prepare('SELECT MAX(due_date) as maxdays FROM '.$tasks_table.'  WHERE  project_id = :project_id');
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
$interval = date_diff($datetime1, $datetime2);
$temp_interval = intval($interval->format('%a')) + 0 ;
// number of days as an integer
//echo "<li> no of days ".$temp_interval ;

//for printing out project time line
$stmt = $pdo->prepare('SELECT DATEDIFF (due_date,start_date) as project_diff FROM '.$projects_table.'  WHERE  id = :project_id');
                $stmt->bindParam(':project_id', $id, PDO::PARAM_INT);
                $stmt->execute();

$project_interval = $stmt->fetchColumn();
//echo"<li> project interval days ".$project_interval." task interval ".$temp_interval;
if ($project_interval <=0){echo" <h1>issues with project dates";}
//for printing out project time line


//for working out project kpi time
//$p_end_date=date_create($project_end_date);
//$project_kpi_days=date_diff($p_end_date, $datetime2);// difference proj end date and end date of last task 
//$pkpi_days = intval($project_kpi_days->format('%a')) + 0 ;
$pkpi_days=$temp_interval-$project_interval;

//echo"<li> proj date kpi ".$project_end_date." ".$pkpi_days;
if ($pkpi_days <=0){$pkpi_alert=" EARLY COMPLETION FORECAST ";}else{$pkpi_alert=" OVERRUN FORECAST ";}


//echo"<li> proj date kpi ".$project_end_date." ".$pkpi_days." ".$pkpi_alert." diff days ".($temp_interval-$project_interval);

//for working out project kpi time




$canvas_length= (1200/(intval($temp_interval)+0));
$canvas_length = $canvas_length*(intval($temp_interval));
//$canvas_length=1200;

$start    = new DateTime($mindays);
$start->modify('first day of this month');
$end      = new DateTime($maxdays);
$end->modify('first day of next month');
$interval = DateInterval::createFromDateString('1 month');
$period   = new DatePeriod($start, $interval, $end);


//ceate an array of co-ordinates based on months
foreach ($period as $dt) {
   // echo "  <li>dt ". $dt->format("Y-m-d");
$testxxxx = $dt->format("Y-m-d");
$date2=date_create($testxxxx);
$nn_interval = date_diff($datetime1, $date2);
$month_interval = date_diff($datetime1, $testdate1);
array_push($month_stack,$nn_interval->format('%a'));
$temp_date_str1=$dt->format("M")." ".$dt->format("y");
array_push($month_stack_name,$temp_date_str1);

			}
//ceate an array of co-ordinates based on months


//print_r($month_stack_name);
$removedM = array_shift($month_stack);


$stmt = $pdo->query('SELECT DATEDIFF(due_date,baseline_date) as days,no_of_days,start_date,due_date,added_by,id,project_id,description,status,dependency,resolution FROM '.$tasks_table.'  WHERE  project_id = :project_id');
                $stmt->bindParam(':project_id', $id, PDO::PARAM_INT);
                $stmt->execute();


echo "<canvas id='mycanvas' width='$canvas_length' height='$canvas_height' style='border:1px solid #d3d3d3;'>";
echo"Your browser does not support the HTML5 canvas tag.</canvas>";
//echo "<img id='canvasImg' alt='Right click to save me'>";
//echo "<img src='' id='mirror' class='canvas__mirror' />";
$canvas_y=100;//40
$canvas_text= 90;//30
$canvas_month_line=70;
$sm_x=0;

while ($row = $stmt->fetch())
        {// while 2
        


	$temp_date=$row['start_date'];
        //$base_date=$row['baseline_date'];

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
        $mid_point = $end_point-(($end_point-$start_point)/2);

        $temp_dependency = $row['dependency'];
 	$temp_id = $row['id'];

	$dependency_links[$temp_id]="$canvas_y"."__".$mid_point;

         $t_base_date=date('d.m',strtotime($row['baseline_date']));
   //     $t_new_due_date=date('jS.M.y',strtotime($row['due_date']));
        $t_new_due_date=date('d.m',strtotime($row['due_date']));



        $con_desc="(".$temp_id.") ".$row['description']." E($t_new_due_date)";
        if ($temp_dependency>0) {
				//$con_desc .= " dp-".$temp_dependency." days ".$row['days'] ;
				
				$dependency_links[$temp_dependency].= "__".$canvas_y."__".$mid_point."__active";
	
				}


	$status_color = 'GREEN';
        if($row['days'] > 0){$status_color = 'RED';}
        if($row['status'] == 'completed'){$status_color = 'GREEN';$my_ticks=0;$my_line=10;} else {$my_ticks=2;$my_line=5;}



	


PRINT <<< END

<script>
      var canvas = document.getElementById('mycanvas');
      var context = canvas.getContext('2d');

      context.beginPath();
      context.moveTo($start_point, $canvas_y);
      context.lineWidth=$my_line;
      context.strokeStyle= "$status_color";
      context.lineTo($end_point, $canvas_y);

        context.setLineDash([5,$my_ticks]);/*dashes are 5px and spaces are 3px*/

//       context.setLineDash([5, 3]);/*dashes are 5px and spaces are 3px*/
	context.font="15px Arial";
	context.fillText("$con_desc",$start_point,$canvas_text);
	context.stroke();





// print circle in middle of task
context.beginPath();
context.lineWidth=1;
context.arc($mid_point,$canvas_y,10,0,2*Math.PI);
context.stroke();
// print circle in middle of task

// print horizontal lines after each task on html canvas
context.beginPath();
context.lineWidth=1;
context.strokeStyle= "black";
context.moveTo(0,$canvas_y+10);
context.lineTo(1200,$canvas_y+10);
context.stroke();
// print horizontal lines after each task on html canvas


//print project time_line
context.beginPath();
context.lineWidth=4;
context.strokeStyle= "blue";
context.moveTo(0,30);
context.lineTo($project_interval*($canvas_length/$temp_interval),30);

context.font="20px Arial";
context.fillstyle="blue";
//context.fillText("project "+"$pkpi_days days "+"$pkpi_alert",$project_interval*($canvas_length/$temp_interval)+10,$canvas_height-20);
context.fillText("Project ($description) V.$my_version   " + " $pkpi_days days"+"$pkpi_alert",20,20);

context.stroke();
//print project time_line




</script>
END;

$canvas_y += 40;
$canvas_text += 40;

}

$sm_x=-1;
//echo "<li>interval ".$interval ;
//echo "<li>temp interval ".$temp_interval;
//echo "<li> no of days ".date_diff($datetime1, $datetime2);
//echo"<li> month_stack array";print_r($month_stack);
//echo"<li> month_stack_name array";
//print_r($month_stack_name);



PRINT <<< END
<script>
// print horizontal lines after months on html canvas
context.beginPath();
context.lineWidth=1;
context.strokeStyle= "black";
context.moveTo(0,$canvas_month_line);
context.lineTo(1200,$canvas_month_line);
context.stroke();
// print horizontal lines after months on html canvas
</script>
END;




echo "<script>";
$sm_x=0;
foreach ($month_stack as $value) {
//month_stack arrayArray ( [0] => 25 [1] => 56 [2] => 84 [3] => 115 [4] => 145 )
//month_stack_name arrayArray ( [0] => Dec 17 [1] => Jan 18 [2] => Feb 18 [3] => Mar 18 [4] => Apr 18 [5] => May 18 ) 
// $temo_mon_x = $month_stack_name[$sm_x+1];
        
    // $temo_mon_x = $month_stack_name[$sm_x]+" "+$v;
//$v = ($value * ($canvas_length/$temp_interval)) -$value;
	$temo_mon_x = $month_stack_name[$sm_x];
	$v = ($month_stack[$sm_x]*$canvas_length/$temp_interval);
	if($sm_x==0){$add_interval=0;$v=0;

			}else{	$add_interval=60;
				$v = ($month_stack[$sm_x]*$canvas_length/$temp_interval);} 

PRINT <<< END
        context.beginPath();
        context.moveTo($v,0);
        context.lineWidth=3;
        context.strokeStyle= "black";
        context.font="bold 15px Arial";
        context.fillText("$temo_mon_x",$v+$add_interval+3,$canvas_month_line-5);


        context.lineTo($v, 800);
        context.stroke();
END;

                        $sm_x+=1;
                                }

echo "</script>";


foreach($dependency_links as $x => $x_value) {
	if (!preg_match('/active/',$x_value)){//echo "match22"; 
	unset($dependency_links[$x]);}
	else
	{
	 $dependency_links[$x]=str_replace("__active","",$x_value);
	}
	//echo "<br>";
					      }

foreach($dependency_links as $x => $x_value) {
        //echo "Key=" . $x . ", Value=" . $x_value;
        //echo "<br>";

$p_display = explode("__", $x_value);
$x1=$p_display[0];
$y1= $p_display[1];
$x2=$p_display[2];
$y2=$p_display[3];

PRINT <<< END
<script>
// print dependency lines after each task on html canvas
context.beginPath();
context.setLineDash([5, 3]);/*dashes are 5px and spaces are 3px*/
context.lineWidth=1;
context.strokeStyle= "black";
context.moveTo($y1,$x1);
context.lineTo($y2,$x2);
//ctx.stroke();
ctx.drawImage(image1, 0, 0, $canvas_height, $canvas_width);
context.stroke();


END;
}
PRINT <<<  END


</script>
END;
?>
<p><p><a href = baseline_project.php>baseline project</a>
    <a href = update_dependencies.php>Refresh dependencies</a>
