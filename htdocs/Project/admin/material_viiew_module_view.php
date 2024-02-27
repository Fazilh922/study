<?php
	include("auth.php");
	include('../connect/db.php');
	
	$mdule=$_GET['mdule'];	
	$sname=$_GET['sname'];	
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include("include/css.php");?>	
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
				<!-- Y<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>Subject Details</h4>
						</div>
                        <!-- Start -->                        
                        <?php						
                        $result = $db->prepare("select * from user_post where mdule='$mdule' and sname='$sname'");
                        $result->execute();
                        $row_count =  $result->rowcount();
                        for($i=0; $rows = $result->fetch(); $i++)
                        {
							$sname = $rows['sname'];
							?>
						<div class="widget-inner">
							<div class="card-courses-list admin-courses">
								<div class="card-courses-media">
									<img src="../post/<?php echo $rows['photo'];?>" alt=""/>
								</div>
								<div class="card-courses-full-dec">
									<div class="card-courses-title">
										<h4><?php echo $rows['sname'];?> <?php echo strtoupper($rows['mdule']);?> MODULE</h4>
									</div>									
									<div class="row card-courses-dec">	                                    	
                                    	<div class="col-md-12">
											<p><?php echo $rows['descp'];?></p> 
										</div>                                                                             
									</div>
								</div>
							</div>
							
						</div>
                        <?php }?>
                        <!-- End -->
					</div>
				</div>
				<!-- Your Profile Views Chart END-->
				<div class="col-md-12">
                    <a href="material_viiew_module.php<?php echo '?sname='.$sname;?>" class="btn red radius-xl outline pull-right" style="width:160px;">Back</a>
                </div> 
                
			</div>
			<!-- Card -->
		</div>
	</main>
	<div class="ttr-overlay"></div>
<?php include("include/js.php");?>
</body>
</html>
