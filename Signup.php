<?php

$username = $_POST['Username'];
$password = $_POST['Password'];
$email = $_POST['Email'];
$docid = $_POST['DocId'];
$isDoctor = $_POST['isDoctor'];

include("connect.php");

$sql = mysql_query("select * from user where username='{$username}' or email='{$email}'");
if($sql){
	if(mysql_num_rows($sql)>0){
		$result = array("Status"=>"NO","Message"=>"Username or Email Already Exists!");
	}
	
	else{
		if($isDoctor=="0"){
			$sql2 = mysql_query("INSERT INTO user VALUES('','{$password}','{$email}','','{$username}','1','0')");
		}
		
		else if($isDoctor=="1"){
			$sql2 = mysql_query("INSERT INTO user VALUES('','{$password}','{$email}','','{$username}','2','0')");
		}
		
		if($sql2){
			$result = array("Status"=>"OK","Message"=>"Signup Succesful!");
		}
		
		else{
			$result = array("Status"=>"NO","Message"=>"Error");
		}
	}	
}

else{
	$result = array("Status"=>"NO","Message"=>"Error");
}

echo json_encode($result);
?>