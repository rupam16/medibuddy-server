<?php

// here is the edit begin (3-10-2012)

$var = $_POST["names"];

// editing ends
include("connect.php");
$res_main = mysql_query("select * from parent_symptom where parent_name in ({$var})"); // this line is new
//$res_main = mysql_query("select * from parent_symptom"); 

while($row=mysql_fetch_array($res_main)){
	$parent_id = $row["parent_id"];
	$parent_name = $row["parent_name"];
	
	$res = mysql_query("select * from symptom where parent_id={$parent_id}");
	
	unset($data);
	
	while($res_row=mysql_fetch_assoc($res)){
		$data[] = $res_row;
	}
	
	$return[]=array("Parent"=>$parent_name,"ID"=>$parent_id,"Symptom"=>$data);
}

echo json_encode($return);
?>