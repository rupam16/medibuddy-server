<?php

$username = $_POST['Username'];
$password = $_POST['Password'];
$email = $_POST['Email'];

include("connect.php");

// first find out if the user email already exists
$sql = "select * from user where email='{$email}' limit 1";
$res1 = mysql_query($sql);
if($res1){
	// query success
	if(mysql_num_rows($res1)>0){
		// there is already this email address
		$return_string = array("Status"=>"NO","Message"=>"Email already exists");
	}
	
	else{
		// no user with this email, so insert it
		$sql_statement = "INSERT INTO user(user_id,username,email,password,rank) VALUES('','{$username}','{$email}','{$password}','')";		
		if(mysql_query($sql_statement))
		{
			$sql_2 = "select * from user where email='{$email}' limit 1";
			$query_result = mysql_query($sql_2);
			if($query_result){
				$row = mysql_fetch_array($query_result);
				$return_string = array("Status"=>"OK","Message"=>$row['user_id']);
			}
			else{
				$return_string = array("Status"=>"NO","Message"=>mysql_error());
			}
		}
		
		else{
			$return_string = array("Status"=>"NO","Message"=>mysql_error());
		}
	}
}


else{
	// query error;
	$return_string = array("Status"=>"NO","Message"=>mysql_error());
}

echo json_encode($return_string);

?>