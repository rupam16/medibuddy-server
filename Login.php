<?php

$email = $_POST['Username'];
$password = $_POST['Password'];

include("connect.php");



$sql1 = "select * from user where username='{$email}' and password='{$password}' limit 1";
$res1 = mysql_query($sql1);
if($res1){
	if(mysql_num_rows($res1)>0){
		$row = mysql_fetch_assoc($res1);
		
		if($row['logged_in']==1){
			$return_string = array("Status"=>"NO","Message"=>"Already LoggedIn");
		}
		
		else{
			$return_string = array("Status"=>"OK","Data"=>$row);
		}
		
	}
	
	else{
		$return_string = array("Status"=>"NO","Message"=>"Email or Password not matched.");
	}
}

else{
	$return_string = array("Status"=>"NO","Message"=>"Database Error");
}

echo json_encode($return_string);

?>