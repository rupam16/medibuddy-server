<?php

$answer_body = $_POST['ans_body'];
$user_id = $_POST['ans_docid'];
$q_id = $_POST['q_id'];

include("connect.php");

$sql1 = "insert into answer values('{$answer_body}','','{$user_id}','{$q_id}','')";
if(mysql_query($sql1)){
	$return_string = array("Status"=>"OK","Message"=>mysql_error());
}
else{
	$return_string = array("Status"=>"NO","Message"=>mysql_error());
}

echo json_encode($return_string);
?>