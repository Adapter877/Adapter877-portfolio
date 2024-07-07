<?php
$host = 'localhost';  // Use 'localhost' or the correct hostname
$username = 's64042970103';   // Your MySQL username
$password = 'pwDB@64042970103';   // Your MySQL password
$database = 'dbs_64042970103';   // Your MySQL database name

$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
