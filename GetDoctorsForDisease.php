<?php

include("connect.php");

$disease_id = $_POST['disease_id']; // ekhane cat er jaygay disease_id hobe
$find = mysql_query("select * from disease_doctor where dis_id='{$disease_id}'");
if($find){
	if(mysql_num_rows($find)>0){
		while($row=mysql_fetch_assoc($find)){
			$disease_field = $row['field'];
			$sql1 = mysql_query("select * from doctor where field='{$disease_field}'");
			while($row1=mysql_fetch_assoc($sql1)){
				$data[]=$row1;
			}
		}
		$result = array("Status"=>"OK","Data"=>$data);
	}
	else{
		$result = array("Status"=>"NO","Message"=>"no doctors!");
	}
}
else{
	$result = array("Status"=>"NO","Message"=>mysql_error());
}

echo json_encode($result);
?>