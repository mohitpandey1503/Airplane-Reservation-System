<?php
	include_once("../includes/db_connect.php");
	include_once("../includes/functions.php");
	if($_REQUEST[act]=="save_airlines")
	{
		save_airlines();
		exit;
	}
	if($_REQUEST[act]=="delete_airlines")
	{
		delete_airlines();
		exit;
	}
	
	###Code for save airlines#####
	function save_airlines()
	{
		global $con;
		$R=$_REQUEST;						
		if($R[airlines_id])
		{
			$statement = "UPDATE `airlines` SET";
			$cond = "WHERE `airlines_id` = '$R[airlines_id]'";
			$msg = "Data Updated Successfully.";
		}
		else
		{
			$statement = "INSERT INTO `airlines` SET";
			$cond = "";
			$msg="Data saved successfully.";
		}
		$SQL=   $statement." 
				`airlines_company_id` = '$R[airlines_company_id]', 
				`airlines_at_id` = '$R[airlines_at_id]', 
				`airlines_name` = '$R[airlines_name]', 
				`airlines_no` = '$R[airlines_no]', 
				`airlines_from` = '$R[airlines_from]', 
				`airlines_deaprture` = '$R[airlines_deaprture]', 
				`airlines_to` = '$R[airlines_to]', 
				`airlines_arrival` = '$R[airlines_arrival]', 
				`airlines_travel_time` = '$R[airlines_travel_time]', 
				`airlines_total_distance` = '$R[airlines_total_distance]'". 
				 $cond;
		$rs = mysqli_query($con,$SQL) or die(mysqli_error($con));
		header("Location:../airlines-report.php?msg=$msg");
	}
#########Function for delete airlines##########3
function delete_airlines()
{	
	global $con;
	/////////Delete the record//////////
	$SQL="DELETE FROM airlines WHERE airlines_id = $_REQUEST[airlines_id]";
	mysqli_query($con,$SQL) or die(mysqli_error($con));
	header("Location:../airlines-report.php?msg=Deleted Successfully.");
}
?>
