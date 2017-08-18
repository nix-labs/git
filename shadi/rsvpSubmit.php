<?php 
$type =  $_POST["type"];
$firstName =  $_POST["firstName"];
$phone =  $_POST["phone"];
$email =  $_POST["email"];
$comment =  $_POST["comment"];

$servername = "localhost";
$username = "tgadmin";
$password = "passw0rd";
$dbname = "shadidb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// prepare and bind
$stmt = $conn->prepare("INSERT INTO rsvp (firstname, phone, email, comment, type) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssss", $firstName, $phone, $email, $comment, $type);

$stmt->execute();

//echo "New records created successfully";

$stmt->close();
$conn->close();


header("Location: rsvp.php?s=1");


?>