<?php
	include('../../connect/db.php');
	$exm_id=$_GET['exm_id'];	
	
	$sql = "delete from exam where exm_id='$exm_id'";
	$q1 = $db->prepare($sql);
	$q1->execute();	

	header("location:../exam_remove.php");
?>
