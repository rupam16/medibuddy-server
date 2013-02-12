<?php

$did = $_POST["disease_id"];

include("connect.php");

$sql = mysql_query("select * from disease_image where disease_id={$did}");
if($sql){

	if(mysql_num_rows($sql)){
		
		while($row=mysql_fetch_assoc($sql)){
			$data[]=$row;
		}
	
		$result = array("Status"=>"OK","Data"=>$data);
	}
	
	else{
		$result = array("Status"=>"NO","Message"=>"No images for this disease!");
	}
	
}

else{
	$result = array("Status"=>"NO","Message"=>"Query Error!");
}

echo json_encode($result);
?>