<?php
    $servername = "34.69.69.249"; // Replace with your database server hostname or IP address
    $username = "root"; // Replace with your database username
    $password = "minecraft"; // Replace with your database password
    $dbname = "MINECRAFT"; // Replace with your database name

    // Create a connection object
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    echo "Connected successfully";
?>

<!doctype html>
<html>
    <head>
        <title> Magenta Monkfish Minecraft Combat Calculator </title>
    </head>
    <body>
        <h1> Magenta Monkfish Minecraft Combat Calculator </h1>

       <?php

    </body>
</html>