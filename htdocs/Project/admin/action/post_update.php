<?php
	include('../../connect/db.php');
	
	$pst_id=$_POST["pst_id"];
	$sname=$_POST["cname"];
	$deprt=$_POST["deprt"];
	$semstr=$_POST["semstr"];
	$descp=$_POST["descp"];
	$mdule=$_POST["mdule"];
	$date=$_POST["date"];
	
	$image = addslashes(file_get_contents($_FILES['photo']['tmp_name']));
	$image_name = addslashes($_FILES['photo']['name']);
	$image_size = getimagesize($_FILES['photo']['tmp_name']);
	move_uploaded_file($_FILES["photo"]["tmp_name"], "../../post/" . $_FILES["photo"]["name"]);
	$photo = $_FILES["photo"]["name"];
	
	
	if($photo=="")
	{	
		$sql = "update user_post set sname='$sname',deprt='$deprt',semstr='$semstr',descp='$descp',date='$date',mdule='$mdule' where pst_id='$pst_id'";
		$q1 = $db->prepare($sql);
		$q1->execute();	
	}
	else
	{
		$sql = "update user_post set photo='$photo',sname='$sname',deprt='$deprt',semstr='$semstr',descp='$descp',date='$date',mdule='$mdule' where pst_id='$pst_id'";
		$q1 = $db->prepare($sql);
		$q1->execute();	
	}
	
	header("location:../material_update.php");
?>
