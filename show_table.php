<?php
require "../../pdo.php";
if (strlen($_SESSION['user']) <1){header("Location: login.php");}

$stmt = $pdo->prepare("show tables");
$stmt->execute();
$tables = $stmt->fetchAll(PDO::FETCH_NUM);
//print_r ($tables);
echo "<form action='show_table.php' method = 'post'><table>";
foreach($tables as $table){
    //Print the table name out onto the page.
echo "<tr><td><input type='checkbox'  name='mytable' value='".$table[0]."'/>".$table[0]."</td><td>".$table[1]."</td></tr>";
echo "</table>";
}

echo "<input type='submit' name='formSubmit' value='Submit' /></form>";

	
$amytable = $_POST['mytable'];
  if(empty($amytable))
  {
    echo("You didn't select a table.");
  }

else
{
$stmt = $pdo->prepare("SHOW COLUMNS from ".$_POST['mytable'].";");
$stmt->execute();
$tables = $stmt->fetchAll(PDO::FETCH_NUM);
//print_r ($tables);
echo "<h3>".$_POST['mytable']."</h3>";
echo "<form action='show_table.php' method = 'post'><table>";
foreach($tables as $table){
    //Print the table name out onto the page.
 echo "<tr><td><input type='checkbox'  name='myfield[]' value='".$table[0]."$$".$table[1]."$$".$table[2]."$$".$table[3]."$$".$table[3]."' /> ";
echo $table[0]." ".$table[1]." ".$table[2]." ".$table[3]." ".$table[4]."</td></tr>";


}

echo "</table>";

echo "<input type='hidden' name='mytable' value='".$_POST['mytable']."'< />";

echo "<input type='submit' name='formSubmit' value='Submit' /></form>";
}
//echo "<li> myfield ".$_POST['myfield'];

//echo "<li>".$_POST['mytable'];
$aField = $_POST['myfield'];
  if(empty($aField))
  {
    echo("You didn't select any fields.");
  }
  else
  {
    $N = count($aField);
    echo("<li> You selected $N field(s): ");
//    for($i=0; $i < $N; $i++)
  //  {
//		$pieces = explode("$$", $aField[$i] ); 
  //   		echo $pieces[0]."---"; // piece1
//		echo $pieces[1]." "; // piece2
  // }
?>
<p> $stmt = $pdo->query('select 
<?php

    for($i=0; $i < $N; $i++)
    {
      //echo($aField[$i] . " ");
                $pieces = explode("$$", $aField[$i] );
                echo $pieces[0].","; // piece1
                //echo $pieces[1]." "; // piece2
   }

echo "from ".$_POST['mytable']."');<p>";
?>

$stmt->execute();
 while ($row = $stmt->fetch()){

<?php

 	   for($i=0; $i < $N; $i++)
    		{
                echo "echo \$row['";
		$pieces = explode("$$", $aField[$i] );
                echo $pieces[0]; // piece1
		echo "'];";
   		}
       echo "}";





  }

?>
