<?php
$dbLocalhost=mysqli_connect("localhost","root"."")
or die("could not connect:".mysqli_connect_error());
mysqli_select_db($dbLocalhost,"practical8")
or die("could not find database:".mysqli_error());
echo"<h1>connected to database</h1>";
?>

