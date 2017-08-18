<?php 
$servername = "localhost";
$username = "root";
$password = "passw0rd";
$dbname = "labworks";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * from rsvp order by time_added desc";
$result = $conn->query($sql);
?>

<html>
<body>
<table border=1>
<tr>
 	<th>Name</th>
 	<th>Phone</th>
 	<th>Email</th>
 	<th>Comment</th>
 	<th>Type</th>
 	
 </tr>


<?php 

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
    	$typeStr = "";
    	if($row["type"] == 1) {
    		$typeStr = "Attending";
    	} elseif($row["type"] == 2) {
    		$typeStr = "Not Attending";
    	} elseif($row["type"] == 3) {
    		$typeStr = "Maybe";
    	}
 ?>
 <tr>
 	<td><?php echo $row["firstname"]?></td>
 	<td><?php echo $row["phone"]?></td>
 	<td><?php echo $row["email"]?></td>
 	<td><?php echo $row["comment"]?></td>
 	<td><?php echo $typeStr?></td>
 	
 </tr>
 <?php
    }
} else {
    echo "0 results";
}

?>
</table>
</body>
</html>


<?php 

//echo "New records created successfully";

$conn->close();


//header("Location: rsvp.php?s=1");


?>