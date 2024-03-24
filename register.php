
<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require("connection_db.php");
    // Retrieve form data
    $fullName = $_POST["fullName"];
    // die($fullName);
    $email = $_POST["email"];
    $password = $_POST["password"];
    $userType = $_POST["userType"];
    // Perform registration based on the selected user type
    if ($userType == "applicant") {
        // Registration logic for applicants
        // Example: Insert data into 'applicants' table
        // Replace 'your_database' and 'applicants' with your actual database and table names
        $stmt = $pdo->prepare("INSERT INTO applicants (username,email,password) VALUES (:fullName, :email, :password)");
        $stmt->execute(array(':fullName' => $fullName, ':email' => $email, ':password' => $password));
        // Redirect to a success page or display a success message
        header("Location: index.php");
        exit();
    } elseif ($userType == "company") {
        // Registration logic for companies
        // Example: Insert data into 'companies' table
        // Replace 'your_database' and 'companies' with your actual database and table names
        $stmt = $pdo->prepare("INSERT INTO companies (name,password) VALUES (:fullName, :password)");
        $stmt->execute(array(':fullName' => $fullName, ':password' => $password));
        // Redirect to a success page or display a success message
        header("Location: index.php");
        exit();
    } else {
        // Invalid user type selected
        echo "Invalid user type.";
    }
} 
// else {
//     // Redirect to the registration page if accessed directly without form submission
//     header("Location: register.php");
//     exit();
// }
?>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Job Entry Website Registration</title>
<style>
    /* Add some basic styling for better appearance */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }
    .container {
        max-width: 500px;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
    }
    label {
        display: block;
        margin-bottom: 8px;
    }
    input[type="text"],
    input[type="email"],
    input[type="password"],
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #2E8B57; /* Dark green */
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }
    input[type="submit"]:hover {
        background-color: #4682B4; /* Steel blue */
    }
</style>
</head>
<body>

<div class="container">
    <h2>Registration</h2>
    <form id="registrationForm" action="" method="post">
        <label for="fullName">Full Name</label>
        <input type="text" id="fullName" name="fullName" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <label for="userType">I am registering as:</label>
        <select id="userType" name="userType" required>
            <option value="">Select User Type</option>
            <option value="applicant">Applicant</option>
            <option value="company">Company</option>
        </select>

        <input type="submit" value="Register">
    </form>
</div>

<script>
    // Optional: You can add client-side validation using JavaScript if needed
    document.getElementById("registrationForm").onsubmit = function() {
        var userType = document.getElementById("userType").value;
        if (userType === "") {
            alert("Please select a user type.");
            return false;
        }
    };
</script>

</body>
</html>
