<html lang="en">
<head>
  <title>ConnectMyPlace Sensors</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<meta name="viewport" content="width=device-width, initial-scale=1">


<script language="JavaScript">
function toggle(source) {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i] != source)
            checkboxes[i].checked = source.checked;
    }
}
</script>


<style>
.collapsible {
  background-color: #777;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.collapsible:after {
  content: '\002B';
  color: white;
  font-weight: bold;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2212";
}

.content {
  padding: 0 18px;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
  background-color: #f1f1f1;
}
</style>

<script>
$(function () {
            $("#datepicker").datepicker({ dateFormat: "yy-mm-dd", changeMonth: true, changeYear: true });
        });
  </script>
</head>
<body>


 <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="index.php">Home</a>

  <ul class="navbar-nav">

    <li class="nav-item">
      <a class="nav-link" href="insert_todo_form.php">Add Task</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="select_project.php">Select Project</a>
    </li>


    <li class="nav-item">
      <a class="nav-link" href="sensor_summary.php">Add Project</a>
    </li>


    <li class="nav-item">
      <a class="nav-link" href="todo_orders.php">View Orders</a>
    </li>


  </ul>
</nav>
<br>

