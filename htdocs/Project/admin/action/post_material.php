<?php
	include("../auth.php");
	include('../../connect/db.php');
	$Log_Id=$_SESSION['SESS_ADMIN_ID'];	

	$sname=$_POST["sname"];
	$deprt=$_POST["deprt"];
	$semstr=$_POST["semstr"];
	
	$mdule=$_POST["mdule"];
	$date=$_POST["date"];
	$descp=$_POST["descp"];
	
	$image = addslashes(file_get_contents($_FILES['photo']['tmp_name']));
	$image_name = addslashes($_FILES['photo']['name']);
	$image_size = getimagesize($_FILES['photo']['tmp_name']);
	move_uploaded_file($_FILES["photo"]["tmp_name"], "../../post/" . $_FILES["photo"]["name"]);
	$photo = $_FILES["photo"]["name"];
		
	$sql = "insert into user_post(Log_Id,sname,deprt,semstr,mdule,photo,date,descp)values('$Log_Id','$sname','$deprt','$semstr','$mdule','$photo','$date','$descp')";
	$q1 = $db->prepare($sql);
	$q1->execute();	


	header("location:../material_viiew.php");
?>
