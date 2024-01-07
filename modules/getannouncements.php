<?php 
require_once("dbCon.php");

$data = mysqli_query($db,"SELECT * FROM announcements");
$arr = [];
$i = 0;
while($row = mysqli_fetch_array($data)){
$arr[$i] = [
"id" => $row[0],
"title" => $row[1],
"price" => $row[2],
"location" => $row[3],
"date" => $row[4],
];
$i+=1;
}
$json = json_encode($arr);

echo($json);


?>