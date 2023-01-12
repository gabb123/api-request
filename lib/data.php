<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "research";
$con = new mysqli($servername, $username, $password, $dbname);

if($con-> connect_error){
    die("Connection failed: " . $con->connect_error);
}

$sql = "SELECT * FROM `students`";
$result = $con->query($sql);
$response = array();
if($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        array_push($response, $row);
    }
}

$con->close();
header('Content-Type: application/json');
echo json_encode($response);
?>