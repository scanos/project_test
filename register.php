
<?php
 ob_start();
 session_start();
 if( isset($_SESSION['user'])!="" ){
  header("Location: index.php");
 }
// include_once '../dbconnect.php';
//require("../phpsqlinfo_dbinfo.php");
require "../../pdo.php";

 $error = false;

 if ( isset($_POST['btn-signup']) ) {
  
  // clean user inputs to prevent sql injections
  $name = trim($_POST['name']);
  $name = strip_tags($name);
  $name = htmlspecialchars($name);
  
  $email = trim($_POST['email']);
  $email = strip_tags($email);
  $email = htmlspecialchars($email);
  
  $pass = trim($_POST['pass']);
  $pass = strip_tags($pass);
  $pass = htmlspecialchars($pass);

  $pass_confirm = trim($_POST['pass_confirm']);
  $pass_confirm = strip_tags($pass_confirm);
  $pass_confirm = htmlspecialchars($pass_confirm);


  $email_confirm = trim($_POST['email_confirm']);
  $email_confirm = strip_tags($email_confirm);
  $email_confirm = htmlspecialchars($email_confirm);

  echo "<li> $email_confirm";


if(strlen($email_confirm)>0)
                              {
				echo "<li> $email_confirm";
                                $stmt = $pdo->query('SELECT * FROM PDO_users');
                                while ($row = $stmt->fetch())
                                        {
                                        $inner_email = $row['userEmail'];
					echo "<li>".$row['userEmail']." ".$email;
                                        if ($inner_email == $email)
                                                        {
                                                        echo "<li>rec ".$row['userEmail']." form ".$email; 
							$temp_p=$row['pwd'];
                                                        $temp_p=substr($temp_p,12,6);
                                                        echo "<li>temp p db $temp_p form $email_confirm"; 
							if ($email_confirm==$temp_p){
								echo "<li> record matches iput";		//exit("Confirmation successful");
								$stmt = $pdo->prepare("UPDATE PDO_users set u_confirmed = 1 WHERE  userEmail = :email");
								$stmt->bindValue(":email", $email);
								$stmt->execute();
								$_SESSION['user'] = $name;
								header("Location: index.php");
                                                        	exit("Confirmation successful");
										       }
								else {
								//$stmt = $pdo->prepare("DELETE FROM PDO_users WHERE userEmail = :email");
                                                                //$stmt->bindValue(":email", $email);
                                                                //$stmt->execute();
								//echo "<li> Wrong-code please try again";
								//$name='';$email='';$pass='';$email_confirm='';

                                echo "<h2> Please  re-enter the code which was emailed to you</h2>";
                                echo "<form method='post' action='register.php'autocomplete='off'>";
                                echo "<input type = 'text' name='email_confirm'><input type = 'hidden' name = 'pass' value='$pass'>";
                                echo "<input type = 'hidden' name = 'email' value='$email'>";
                                echo"<div class='form-group'> <button type='submit' class='btn btn-block btn-primary' name='btn-signup'";
                                echo ">Sign Up</button></div>";
                                echo "</form>";
				exit;








								     }
                                                        }
                                        //$error = true;
                                        }


                                }
  
  
// basic name validation
  if (empty($name)) {
   $error = true;
   $nameError = "Please enter your full name.";
  } else if (strlen($name) < 3) {
   $error = true;
   $nameError = "Name must have at least 3 characters.";
  } else if (!preg_match("/^[a-zA-Z ]+$/",$name)) {
   $error = true;
   $nameError = "Name must contain alphabets and space.";
  }
  
  //basic email validation
  if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
   $error = true;
   $emailError = "Please enter valid email address.";
  } else {
		$stmt = $pdo->query('SELECT userEmail FROM PDO_users');
		while ($row = $stmt->fetch())
		{
			$inner_email = $row['userEmail'];
    			if ($inner_email ==$email){ $emailError = "Provided Email is already in use.";$error = true;  
		}

         }


  }
  // password validation
  if (empty($pass)){
   $error = true;
   $passError = "Please enter password.";
  } else if(strlen($pass) < 6) {
   $error = true;
   $passError = "Password must have at least 6 characters.";
  }
  
  if ($pass != $pass_confirm){
   $error = true;
   $passError = "Passwords do not match.";
  } 


  // if there's no error, continue to signup
  if( !$error ) {
			$pass=hash("sha256",$pass);
			$stmt = $pdo->prepare("INSERT INTO PDO_users(name,pwd,userEmail) VALUES (?,?,?)");
			$stmt->execute([$name,$pass,$email]);
			$arr = $stmt->errorInfo();
  				 if (strlen($arr[2]<1)) {
				echo "<h2> Please  enter the code which was emailed to you</h2>"; 
				echo "<form method='post' action='register.php'autocomplete='off'>";
				echo "<input type = 'text' name='email_confirm'><input type = 'hidden' name = 'pass' value='$pass'>";
				echo "<input type = 'hidden' name = 'email' value='$email'>";
				echo"<div class='form-group'> <button type='submit' class='btn btn-block btn-primary' name='btn-signup'";
				echo ">Sign Up</button></div>";
				echo "</form>";
				//exit;


$sensor_msg = "You have been successfully registered on the site.Here is your code <b>".substr($pass,12,6)."</b> Please enter in the form to coplete e-mail regustration.  ";
$exec_msg="echo '<b>Hello</b> $sensor_msg'";
$exec_msg.="| mail -s  \"$(echo -e \"E-mail Code Confirmation\nContent-Type: text/html\")\" $email";
$test = shell_exec($exec_msg);
echo "<li>$exec_msg";
$errTyp = "confirm_code";

    unset($name);
    unset($email);
    unset($pass);
exit;
   } else {
    $errTyp = "danger";
    $errMSG = "Something went wrong, try again later..."; 
   } 
    
  }


 }
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Coding Cage - Login & Registration System</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css"  />
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>

<div class="container">

 <div id="login-form">
    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off">
    
     <div class="col-md-12">
        
         <div class="form-group">
             <h2 class="">Sign Up.</h2>
            </div>
        
         <div class="form-group">
             <hr />
            </div>
            
            <?php
   if ( isset($errMSG) ) {
    
    ?>
    <div class="form-group">
             <div class="alert alert-<?php echo ($errTyp=="success") ? "success" : $errTyp; ?>">
    <span class="glyphicon glyphicon-info-sign"></span> <?php echo $errMSG; ?>
                </div>
             </div>
                <?php
   }
   ?>
            
            <div class="form-group">
             <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
             <input type="text" name="name" class="form-control" placeholder="Enter Name" maxlength="50" value="<?php echo $name ?>" />
                </div>
                <span class="text-danger"><?php echo $nameError; ?></span>
            </div>
            
            <div class="form-group">
             <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
             <input type="email" name="email" class="form-control" placeholder="Enter Your Email" maxlength="40" value="<?php echo $email ?>" />
                </div>
                <span class="text-danger"><?php echo $emailError; ?></span>
            </div>
            
            <div class="form-group">
             <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
             <input type="password" name="pass" class="form-control" placeholder="Enter Password" maxlength="15" />
                </div>
                <span class="text-danger"><?php echo $passError; ?></span>
            </div>

            <div class="form-group">
             <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
             <input type="password" name="pass_confirm" class="form-control" placeholder="Confirm Password" maxlength="15" />
                </div>
                <span class="text-danger"><?php echo $passError; ?></span>
            </div>


            
            <div class="form-group">
             <hr />
            </div>
            
            <div class="form-group">
             <button type="submit" class="btn btn-block btn-primary" name="btn-signup">Sign Up</button>
            </div>
            
            <div class="form-group">
             <hr />
            </div>
            
            <div class="form-group">
             <a href="index1.php">Sign in Here...</a>
            </div>
        
        </div>
   
    </form>
    </div> 

</div>

</body>
</html>
<?php ob_end_flush(); ?>
