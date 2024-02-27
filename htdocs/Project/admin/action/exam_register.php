<?php
	include("../auth.php");
	include('../../connect/db.php');
	$Log_Id=$_SESSION['SESS_ADMIN_ID'];	

	$sname=$_POST["sname"];
	$deprt=$_POST["deprt"];
	$semstr=$_POST["semstr"];
	$qstn=$_POST["qstn"];
	$opta=$_POST["opta"];
	$optb=$_POST["optb"];
	$optc=$_POST["optc"];
	$optd=$_POST["optd"];
	$answr=$_POST["answr"];
	$mrk=$_POST["mrk"];
	
	
	$qno=$_POST["qno"];
	
	$date=date("Y-m-d");
	 $result = $db->prepare("select * from user_post where sname='$sname'");
	$result->execute();
	for($i=1; $row = $result->fetch(); $i++)
	{
	$photo=$row["photo"];
   }			
				
	$sql = "insert into exam(Log_Id,sname,deprt,semstr,qstn,opta,optb,optc,optd,answr,mrk,date,photo,qno)values('$Log_Id','$sname','$deprt','$semstr','$qstn','$opta','$optb','$optc','$optd','$answr','$mrk','$date','$photo','$qno')";
	$q1 = $db->prepare($sql);
	$q1->execute();	


	header("location:../exam_view.php");
?>
