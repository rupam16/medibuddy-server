<?php

/*$host_name = "mysql-shared-02.phpfog.com";
$host_username = "isrupam39--59764";
$host_pass = "QR44y54b40Xt";*/

$host_name = "localhost";
$host_username = "root";
$host_pass = "";

$con = mysql_connect($host_name,$host_username,$host_pass);

if($con){
	if(mysql_select_db("medibuddy_phpfogapp_com",$con)){
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