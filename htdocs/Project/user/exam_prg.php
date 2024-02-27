<?php
	include("auth.php");
	include('../connect/db.php');
	$Log_Id=$_SESSION['SESS_USER_ID'];	

	$sname=$_GET["sname"];

	$result = $db->prepare("select * from examattend where sname='$sname' and Log_Id='$Log_Id'");
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++)
	{
		$qno=$row["qno"];
	}
	$qt=$qno+1;
	
	echo $qt;
	if($qt==2)
	{
		header("location: exam_start2.php?sname=$sname");
	}
	else if($qt==3)
	{
		header("location: exam_start3.php?sname=$sname");
	}
	else if($qt==4)
	{
		header("location: exam_start4.php?sname=$sname");
	}
	else if($qt==5)
	{
		header("location: exam_start5.php?sname=$sname");
	}
	else if($qt==6)
	{
		header("location: exam_start6.php?sname=$sname");
	}
	else if($qt==7)
	{
		header("location: exam_start7.php?sname=$sname");
	}
	else if($qt==8)
	{
		header("location: exam_start8.php?sname=$sname");
	}
	else if($qt==9)
	{
		header("location: exam_start9.php?sname=$sname");
	}
	else if($qt==10)
	{
		header("location: exam_start10.php?sname=$sname");
	}
	else
	{
		header("location: exam_start1.php?sname=$sname");
	}
?>
