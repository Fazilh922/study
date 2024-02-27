<?php
	include("auth.php");
	include('../connect/db.php');
	$exm_id=$_GET["exm_id"];
	$result = $db->prepare("select * from exam where exm_id='$exm_id'");
	$result->execute();
	for($i=1; $row = $result->fetch(); $i++)
	{
		$sname=$row["sname"];
		$deprt=$row["deprt"];
		$semstr=$row["semstr"];
		$qstn=$row["qstn"];
		$opta=$row["opta"];
		$optb=$row["optb"];
		$optc=$row["optc"];
		$optd=$row["optd"];
		$answr=$row["answr"];
		$mrk=$row["mrk"];
   }			
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include("include/css.php");?>	
     <!-- END: load jquery -->
    <script type="text/javascript" src="js/table/table.js"></script>
    <script src="js/setup.js" type="text/javascript"></script>
	 <script type="text/javascript">
        $(document).ready(function () {
            setupLeftMenu();
		    setSidebarHeight();
        });
    </script>

</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar"> 
	
	<!-- header start -->
	<header class="ttr-header">
		<?php include("include/header.php");?>	
	</header>
	<!-- header end -->
	<!-- Left sidebar menu start -->
		<?php include("include/leftmenu.php");?>	
	<!-- Left sidebar menu end -->

	<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">Dashboard</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>Dashboard</li>
				</ul>
			</div>	
			<!-- Card -->
			<div class="row">
				<!-- Your Profile Views Chart -->
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>Exam Register</h4>
						</div>
						<div class="widget-inner">
		<form class="edit-profile m-b30" method="post" autocomplete="off" action="action/exam_update.php" enctype="multipart/form-data">
								<div class="row">
									<div class="col-12">
										<div class="ml-auto">
											<h3>1. Exam Details</h3>
										</div>
									</div>
									<div class="form-group col-4">
										<label class="col-form-label">Subject</label>
										<div>                                        	
                                            <input class="form-control" type="text" name="sname" value="<?php echo $sname;?>" required>
                                            <input type="hidden" name="exm_id" value="<?php echo $exm_id;?>">
										</div>
									</div>
                                    <div class="form-group col-4">
										<label class="col-form-label">Department</label>
										<div>                                        	
                                            <input class="form-control" type="text" name="deprt" value="<?php echo $deprt;?>" required>                                 	
										</div>
									</div>	
                                    <div class="form-group col-4">
										<label class="col-form-label">Semester</label>
										<div>                                        
                                             <input class="form-control" type="text" name="semstr" value="<?php echo $semstr;?>" required>                                         	
										</div>
									</div>																	
									<div class="seperator"></div>
                                    <div class="form-group col-12">
										<label class="col-form-label">Question</label>
										<div>
											<input class="form-control" type="text" name="qstn" value="<?php echo $qstn;?>" required>
										</div>
									</div>	
                                    <div class="form-group col-6">
										<label class="col-form-label">Option A</label>
										<div>
											<input class="form-control" type="text" name="opta" value="<?php echo $opta;?>" required>
										</div>
									</div>	
                                    <div class="form-group col-6">
										<label class="col-form-label">Option B</label>
										<div>
											<input class="form-control" type="text" name="optb" value="<?php echo $optb;?>" required>
										</div>
									</div>	
                                    <div class="form-group col-6">
										<label class="col-form-label">Option C</label>
										<div>
											<input class="form-control" type="text" name="optc" value="<?php echo $optc;?>" required>
										</div>
									</div>	
                                    <div class="form-group col-6">
										<label class="col-form-label">Option D</label>
										<div>
											<input class="form-control" type="text" name="optd" value="<?php echo $optd;?>" required>
										</div>
									</div>	
                                    <div class="form-group col-6">
										<label class="col-form-label">Answer</label>
										<div>
											<input class="form-control" type="text" name="answr" value="<?php echo $answr;?>">
										</div>
									</div>
                                    <div class="form-group col-6">
										<label class="col-form-label">Mark</label>
										<div>
											<input class="form-control" type="text" name="mrk" value="<?php echo $mrk;?>" required>
										</div>
									</div>
                                    <div class="seperator"></div>
																																			
									<div class="m-form__seperator m-form__seperator--dashed m-form__seperator--space-2x"></div>
									<div class="col-12">
										<button type="submit" class="btn pull-right">Update</button>
										<button type="reset" class="btn-secondry pull-right">Cancel</button>
									</div>
								</div>
							</form>							
						</div>
					</div>
				</div>
				<!-- Your Profile Views Chart END-->
				<!-- Your Profile Views Chart END-->
                
			</div>
			<!-- Card -->
		</div>
	</main>
	<div class="ttr-overlay"></div>
<?php include("include/js.php");?>
</body>
</html>