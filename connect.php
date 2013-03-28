<?php

$host_name = $_ENV['OPENSHIFT_MYSQL_DB_HOST'];
$host_username = $_ENV['OPENSHIFT_MYSQL_DB_USERNAME'];
$host_pass = $_ENV['OPENSHIFT_MYSQL_DB_PASSWORD'];

$con = mysql_connect($host_name,$host_username,$host_pass);

if($con){
	if(mysql_select_db("medibuddy",$con)){
	}
	else{
		echo "database error";
		die();
	}
}

else{
	echo "Database Problem";
	die();
}
?>