<?php

$objid = $_POST['objectid'];
$pid = $_POST['pid'];
$inc = $_POST['inc'];
$user = $_POST['userid'];

include("connect.php");

$checker_sql = mysql_query("select * from ranktable where object_id={$objid} and pid={$pid} and user_id={$user}");
if($checker_sql){
	if(mysql_num_rows($checker_sql)>0){
		if($inc=="1"){ // already voted and now trying to increase vote , so stop him
			$result = array("Status"=>"NO","Message"=>"Already voted once!");
		}
		
		else { // jodi decrement korte chay taile just table theke delete koro , ebong object er database update (-) koro.
			mysql_query("delete from ranktable where object_id={$objid} and pid={$pid} and user_id={$user}");
			
			if($objid=="1"){ // means question er rank barao
				mysql_query("UPDATE questions SET q_rank=q_rank-1 WHERE q_id={$pid}");
			}
			
			else if($objid=="2"){ // means answer er rank update koro
				mysql_query("UPDATE answer SET a_rank=a_rank-1 WHERE q_id={$pid}");
			}
			
			$result = array("Status"=>"OK","Message"=>"Success");
		}
	}
	
	else{
		if($inc=="0"){ // never voted and now trying to take vote away . so stop him
			$result = array("Status"=>"NO","Message"=>"You have not voted yet!");
		}
		
		else{ // jodi increment korte chay taile just table a insert koro , ebong object er database update (+) koro.
			mysql_query("INSERT INTO ranktable VALUES({$objid},{$pid},{$user})");
			if($objid=="1"){ // means question er rank barao
				mysql_query("UPDATE questions SET q_rank=q_rank+1 WHERE q_id={$pid}");
			}
			
			else if($objid=="2"){ // means answer er rank update koro
				mysql_query("UPDATE answer SET a_rank=a_rank+1 WHERE q_id={$pid}");
			}
			
			$result = array("Status"=>"OK","Message"=>"Success");
		}
	}
}

else{
	$result = array("Status"=>"NO","Message"=>"Query Error!");
}

echo json_encode($result);

?>