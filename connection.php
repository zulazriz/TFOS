<?php

// $host = 'fourpaws.mysql.database.azure.com';
// $username = 'group15@fourpaws';
// $password = 'Cathotelg15';
// $db_name = 'cathoteldb';
//
// //Establishes the connection
// $conn = mysqli_init();
// mysqli_real_connect($conn, $host, $username, $password, $db_name, 3306);
//
// if (mysqli_connect_errno($conn)) {
// 	die('Failed to connect to MySQL: '.mysqli_connect_error());
// }

/* Database credentials. Assuming you are running MySQL server with default setting (user 'root' with no password) */
$host = 'localhost';
$username = 'root';
$password = '';
$db_name = 'tfos';

/* Establishes the connection */
$conn = mysqli_init();
mysqli_real_connect($conn, $host, $username, $password, $db_name, 3306);

/* Check connection */
if (mysqli_connect_errno($conn)) {
	die('Failed to connect to MySQL: '.mysqli_connect_error());
}


// $host = 'z5zm8hebixwywy9d.cbetxkdyhwsb.us-east-1.rds.amazonaws.com';
// $username = 'h14ty5dq8nv37o2a';
// $password = 'q9o6ipjho97x5drh';
// $db_name = 'rr4ns5h0shlq0pm5';

// //Establishes the connection
// $conn = mysqli_init();
// mysqli_real_connect($conn, $host, $username, $password, $db_name, 3306);

// if (mysqli_connect_errno()) {
// 	die('Failed to connect to MySQL: '.mysqli_connect_error());
// }


// /* Database credentials. Assuming you are running MySQL
// server with default setting (user 'root' with no password) */
// define('DB_SERVER', 'localhost');
// define('DB_USERNAME', 'root');
// define('DB_PASSWORD', '');
// define('DB_NAME', 'testtfsystem');
 
// /* Attempt to connect to MySQL database */
// $mysqli = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
// // Check connection
// if($mysqli === false){
//     die("ERROR: Could not connect. " . mysqli_connect_error());
// }
?>