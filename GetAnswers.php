<?php

$did = $_POST['q_id'];

include("connect.php");

$sql1 = "select * from answer where q_id={$did} order by a_rank desc";
$res1 = mysql_query($sql1);
if($res1){
	$num_rows = mysql_num_rows($res1);
	if($num_rows>0){
		while($row = mysql_fetch_assoc($res1)){
			$data[]=$row;
		}
		$return_string = array("Status"=>"OK","Count"=>$num_rows,"Data"=>$data);
	}
	
	else{
		$return_string = array("Status"=>"NO","Message"=>"No answers for this question!");
	}
}

else{
	$return_string = array("Status"=>"NO","Message"=>"Query Error");
}

echo json_encode($return_string);
?>