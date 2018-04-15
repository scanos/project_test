
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

  $pass_code = trim($_POST['pass_code']);
  $pass_code = strip_tags($pass_code);
  $pass_code = htmlspecialchars($pass_code);


  $email_confirm = trim($_POST['email_confirm']);
  $email_confirm = strip_tags($email_confirm);
  $email_confirm = htmlspecialchars($email_confirm);

  echo "<li> $email_confirm";

if (strlen($pass)>1 && strlen($pass_confirm)>1)
{ 
		if ($pass <> $pass_confirm)
		{
			echo "<li> Passwords do not match";
			$email_confirm =0;
		}
                     if (strlen($pass) < 9)
                {
                        echo "<li> Password length needs to be at least 8 characters";
                        $email_confirm =0;
                }


					 $stmt = $pdo->query('SELECT * FROM PDO_users');
 					while ($row = $stmt->fetch())
                                		{
						$temp_p=$row['pwd'];
                                        	$temp_p=substr($temp_p,12,6);
                                        	if ($temp_p <> $pass_code) 
								{
								
 					                       echo "<li> You have entered the wrong code";
                        					$email_confirm =0;


								}
						}




}


if (strlen($email)>1 && $email_confirm==1){
echo "<p> Password match and email confirmed";
  			$pass=hash("sha256",$pass);

                        $stmt = $pdo->prepare("UPDATE PDO_users set pwd = :pass  WHERE  userEmail = :email");
                        $stmt->bindValue(":email", $email);
                        $stmt->bindValue(":pass", $pass);
			$stmt->execute();
			echo "<p> Your password has been successfully changed  - please login ";
			exit;


						}

if (strlen($email)>1 && strlen($email_confirm<1)){


 $stmt = $pdo->query('SELECT * FROM PDO_users');
 while ($row = $stmt->fetch())
 				{
                                        $inner_email = $row['userEmail'];
                                        echo "<li>".$row['userEmail']." ".$email;
                                        if ($inner_email == $email)
					{
                                        $temp_p=$row['pwd'];
                                        $temp_p=substr($temp_p,12,6);
					$exec_msg="echo 'Your code is ".$temp_p."'";
					$exec_msg.="| mail -s  \"$(echo -e \"E-mail Code Confirmation\nContent-Type: text/html\")\" $inner_email";
					$test = shell_exec($exec_msg);


                                echo "<h2> Please  re-enter the code which was emailed to you</h2>";
                                echo "<form method='post' action='forgot_login.php'autocomplete='off'>";
                                echo "<p>Enter code <input type = 'text' name='pass_code'>";

                                echo "<p>Password         <input type = 'password' name='pass'  autocomplete='off'>";
                                echo "<p>Password confirm <input type = 'password' name='pass_confirm' autocomplete='off'>";

                                echo "<input type = 'hidden' name = 'email' value='$email'>";
                                echo "<input type = 'hidden' name = 'email_confirm' value='1'>";

                                echo"<div class='form-group'> <button type='submit' class='btn btn-block btn-primary' name='btn-signup'";
                                echo ">Sign Up</button></div>";
                                echo "</form>";
                                exit;



					}
				}
}


if(strlen($email_confirm)>0 && $test=123455)
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
             <h2 class="">Reset your password</h2>
            <p> You need to use an email address with which you registered  - you then need to check your mailbox 
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
                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
             <input type="email" name="email" class="form-control" placeholder="Enter Your Email" maxlength="40" value="<?php echo $email ?>" />
                </div>
                <span class="text-danger"><?php echo $emailError; ?></span>
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
