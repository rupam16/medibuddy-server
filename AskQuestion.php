<?php

$did = $_POST['did'];
$uid = $_POST['uid'];
$body = $_POST['body'];

include("connect.php");

$sql1 = "insert into questions values('','{$body}','','','{$did}','{$uid}')";
if(mysql_query($sql1)){
	$return_string = array("Status"=>"OK","Message"=>"Question inserted");
}
else{
	$return_string = array("Status"=>"NO","Message"=>"Question not inserted");
}

echo json_encode($return_string);
?>