
<?php
//ob_start();
//session_start();
require "../../pdo.php";

 if (isset($_SESSION['user'])=="")  {

echo "<li> session user step ";
 $my_name = trim($_POST['name']);
 $my_name = strip_tags($my_name);
 $my_name = htmlspecialchars($my_name);

 $my_pwd = trim($_POST['my_pwd']);
 $my_pwd = strip_tags($my_pwd);
 $my_pwd = htmlspecialchars($my_pwd);
echo "<li>".$my_pwd ;

 $my_val = trim($_POST['my_val']);
 $my_val = strip_tags($my_val);
 $my_val = htmlspecialchars($my_val);



if ((strlen($my_name)>1) && ($my_val == "123"))
{
echo "<li>name length gt 1 and myval is 123";
$my_pwd=hash("sha256",$my_pwd);

$stmt = $pdo->query('SELECT name,pwd FROM PDO_users');
$pw_true="false";
		while ($row = $stmt->fetch())
		{
    		$inner_pwd=$row['pwd'];
    		$inner_name=$row['name'];
		echo"<li> traversing pdo_user";
    		if (($inner_name==$my_name)&&($inner_pwd==$my_pwd)) 
     			{
			echo "PASSWORD MATCH";
			$_SESSION['user'] = $my_name;
			 header("Location: display_tasks.php");
			}
                        else
                       {
                        echo "PASSWORD NO MATCH";
                         header("Location: login.php");
                        }


		}


}

else
{
//echo "form data has not been sent";
PRINT <<< END


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Coding Cage - Login & Registration System</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css"  />
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>

<div class="container">


<body>

<h2>Login</h2>

<form method="post" action="
END;
echo htmlspecialchars($_SERVER["PHP_SELF"]);
PRINT <<< END
">


<legend><span class="form-control"></span><b> Name </b></legend>
<input type='text' name='name' class="form-control" value=''>


<legend><span class='number'></span> <b>Password</b></legend>
<input type='password' name='my_pwd' class="form-control" value=''  autocomplete='off'>



<legend><span class='number'></span> <b>Validate (type 123)</b></legend>
<input type='text' name='my_val' class="form-control" value=''>



<p> <input type='submit'  value='Log In'  />
</form>
</div>
<a href=register.php>Register</a><p>
<a href=forgot_login.php>Forgot Password</a>

</body>
END;

}
}
//require ("display_animals.php");

?>
