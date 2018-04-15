<?php
  $logout = trim($_GET['logout']);
  $logout = strip_tags($logout);
  $logout = htmlspecialchars($logout);

 session_start();
 if (!isset($_SESSION['user'])) {
  header("Location: login.php>");
 } else if(isset($_SESSION['user'])!="") {
  header("Location: display_tasks.php>");
 }

 if (isset($logout)) {
  unset($_SESSION['user']);
  session_unset();
  session_destroy();
  header("Location: login.php");
  exit;
 }

?>
