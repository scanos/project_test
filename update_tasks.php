<?php
require "../../pdo.php";
//if (strlen($_SESSION['user']) <1){header("Location: login.php");}

if (strlen($_SESSION['user']) <1){header("Location: login.php");}
                        else
                        {header( "refresh:0;url=display_tasks.php" );}


//$my_date=$_POST['datepicker'];
//echo $_POST['datepicker'];
if($_POST['clear_dependency'] > 0){$temp_depend=0;}else{$temp_depend=$_POST['dependency'];}

if ($temp_depend>1)
{
$stmt = $pdo->query('select id,due_date from '.$tasks_table.' where id = (?)');
$stmt->execute([$temp_depend]);

while ($row = $stmt->fetch())
        {
                $t_new_start_date = $row['due_date'];
		$my_date=substr($t_new_start_date,0,10);
		$add_days =  " + ". $_POST['no_of_days']." days";
		$my_date = date('Y-m-d', strtotime($my_date. $add_days));

        }
}
else
{
$t_new_start_date=$_POST['datepicker'];
$my_date=substr($my_date,0,10);
$add_days =  " + ". $_POST['no_of_days']." days";
$my_date = date('Y-m-d', strtotime($my_date. $add_days));
$mdd_days = $_POST['no_of_days'] * 24 * 60 * 60;
$tmstamp = strtotime($t_new_start_date) + $mdd_days;
//echo date("Y m d", $tmstamp) ;
$my_date = date("Y-m-d", $tmstamp) ;

//echo "<li> adding $add_days is now $my_date";
}


$stmt = $pdo->prepare("UPDATE ".$tasks_table." set description = :description,resolution = :resolution,dependency = :dependency
,no_of_days = :no_of_days,start_date =:start_date,status = :status,due_date =:due_date  WHERE  id = :id");

$stmt->bindParam(':id', $_POST['id'], PDO::PARAM_INT);       
$stmt->bindParam(':status', $_POST['status'], PDO::PARAM_INT);
$stmt->bindParam(':description', $_POST['description'], PDO::PARAM_STR);
$stmt->bindParam(':start_date', $t_new_start_date, PDO::PARAM_STR);
$stmt->bindParam(':no_of_days', $_POST['no_of_days'], PDO::PARAM_INT);
$stmt->bindParam(':dependency', $temp_depend, PDO::PARAM_INT);

$stmt->bindParam(':due_date', $my_date, PDO::PARAM_STR);
$stmt->bindParam(':resolution', $_POST['resolution'], PDO::PARAM_STR);   
$stmt->execute();
echo "<p> successful update redirecting";
?>
