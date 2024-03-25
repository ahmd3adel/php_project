<?php

// Database credentials
$servername = "localhost"; // Change this if your database is hosted elsewhere
$username = "root"; // Replace with your actual username
$password = ""; // Replace with your actual password
$dbname = "php_pro";

try {
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   
    
    
} catch(PDOException $e) {
}
?>
