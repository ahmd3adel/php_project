<?php

// Database credentials
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "php1";

try {
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   
    
    
} catch(PDOException $e) {
    
}
?>
