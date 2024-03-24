<?php

// Database credentials
$servername = "localhost"; // Change this if your database is hosted elsewhere
$username = "root"; // Replace with your actual username
$password = ""; // Replace with your actual password
$dbname = "php_pro";

try {
    // Create a new PDO instance
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    
    // Set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // If you want to set charset
    $pdo->exec("set names utf8");
    
} catch(PDOException $e) {
    // Display error message if connection fails
    echo "Connection failed: " . $e->getMessage();
}
?>
