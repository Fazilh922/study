<?php
	include("../auth.php");
	include('../../connect/db.php');
	$Log_Id=$_SESSION['SESS_USER_ID'];	

	$sname=$_GET["sname"];
	$qstn=$_GET["qstn"];
	$answr=$_GET["answr"];
	$mrk=$_GET["mrk"];
	$qno=$_GET["qno"];
	$date=date("Y-m-d");
	
	
	$qst=$_GET["qst"];
	
	$result = $db->prepare("select * from exam where qstn='$qstn'");
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++)
	{
		$answr=$row["answr"];
	}
	
		
	if($qst==$answr)
	{
		$sql = "insert into examattend(Log_Id,sname,qstn,answr,mrk,date,qno)values('$Log_Id','$sname','$qstn','$answr','$mrk','$date','$qno')";
		$q1 = $db->prepare($sql);
		$q1->execute();	
		header("location: ../exam_start6.php?sname=$sname");
	}
	else
	{
		header("location: ../exam_start_wrng.php?sname=$sname");
	}
	
?>
