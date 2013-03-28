<?php

include("connect.php");
$var = $_POST['var'];

$res = mysql_query("select count(d_id) as tot,d_id 
					from disease_symptom
					where s_id in ({$var})
					group by d_id
					order by count(d_id) desc");

if($res){
	if(mysql_num_rows($res)>0){
		while($row=mysql_fetch_array($res)){
			$did = $row['d_id'];
			$matches = $row["tot"];
			$dis_sql = mysql_query("select * from disease where d_id={$did} limit 1");
			$dis_row = mysql_fetch_array($dis_sql);
			
			unset($data);
			$s_res = mysql_query("select * from disease_symptom where d_id={$did}");
			while($s_row=mysql_fetch_array($s_res)){
				
				$sid = $s_row['s_id'];
				
				$sql = mysql_query("select *
									from symptom,parent_symptom
									where symptom.symptom_id={$sid} and symptom.parent_id=parent_symptom.parent_id limit 1");
				if(mysql_num_rows($sql)>0){
					$data[] = mysql_fetch_assoc($sql);
				}	
			}
			
			$result[] = array("Disease ID"=>$did,"Disease Name"=>$dis_row["d_name"],"Matches"=>$matches,"Symptoms"=>$data);
		}
		
		$ret = array("Status"=>"Ok","Data"=>$result);
	}
	
	else{
		$ret = array("Status"=>"No","Message"=>"No relevant data");
	}
	
}
else{
	$ret = array("Status"=>"No","Message"=>mysql_error());
}

echo json_encode($ret);
?>