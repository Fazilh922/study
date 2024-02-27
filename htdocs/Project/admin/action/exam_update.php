<?php
	include("../auth.php");
	include('../../connect/db.php');
	$exm_id=$_POST['exm_id'];	

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
	
	$sql = "update exam set sname='$sname',deprt='$deprt',semstr='$semstr',qstn='$qstn',opta='$opta',optb='$optb',optc='$optc',optd='$optd',answr='$answr',mrk='$mrk' where exm_id='$exm_id'";
	$q1 = $db->prepare($sql);
	$q1->execute();	


	header("location:../exam_update.php");
?>
