<?php

include("connect.php");
$disease_id = $_POST['disease_id'];

$sql=mysql_query("select * from disease where d_id={$disease_id}");
if($sql){
	
	if(mysql_num_rows($sql)){
		$disease_row = mysql_fetch_array($sql);
		$disease_name = $disease_row["d_name"];
		
		$sql1 = mysql_query("select * 
							 from disease_symptom,symptom
							 where d_id={$disease_id} and disease_symptom.s_id=symptom.symptom_id");
							 
		if($sql1){
			if(mysql_num_rows($sql1)){
				while($row1=mysql_fetch_assoc($sql1)){
					$data[]=$row1;
				}
				
				$result = array("Status"=>"OK","Data"=>$data);
			}
			
			else{
				$result = array("Status"=>"NO","Message"=>"No Symptoms for this disease");
			}
		}
		
		else{
			$result = array("Status"=>"NO","Message"=>"Query Error!");
		}
		
	}
	
	else{
		$result=array("Status"=>"NO","Message"=>"No Disease with this name in database!");
	}
}

else{
	$result=array("Status"=>"NO","Message"=>"Query Error");
}

echo json_encode($result);
?>