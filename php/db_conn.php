<?php

$sname= "localhost";
$unmae= "s64042970103";
$password = "pwDB@64042970103";

$db_name = "dbs_64042970103";

$conn = mysqli_connect($sname, $unmae, $password, $db_name);

if (!$conn) {
	echo "Connection failed!";
}