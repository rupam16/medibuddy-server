<?php

include("connect.php");

$res = mysql_query("select * from disease");
if($res){
	if(mysql_num_rows($res)>0){
		while($row=mysql_fetch_assoc($res)){
			$data[]=$row;
		}
		$result = array("Status"=>"OK","Data"=>$data);
	}
	else{
		$result = array("Status"=>"NO","Message"=>"no data!");
	}
}

else{
	$result = array("Status"=>"NO","Message"=>mysql_error());
}

echo json_encode($result);
?>