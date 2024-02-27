<?php
	include("auth.php");
	include('../connect/db.php');
	$Log_Id=$_SESSION['SESS_USER_ID'];
	$sname=$_GET["sname"];
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
			<div class="row">
            	<?php
					$qry= $db->prepare("SELECT * FROM examattend WHERE sname='$sname' AND Log_Id='$Log_Id'");
					$qry->execute();
					$count = $qry->rowcount();
					if($count > 0) 
					{		
				?>
				<h4 style="width:500px; color:red; letter-spacing:5px; text-align:center;" class="alert alert-danger">Completed</h4>
				<?php									
					}
					else
					{
				?>
			 <!-- Start -->  
				<!-- Your Profile Views Chart -->
				<div class="col-lg-8 m-b30">
                	<?php
                        $result = $db->prepare("select * from exam where sname='$sname' group by sname");
                        $result->execute();
                        $row_count =  $result->rowcount();
                        for($i=0; $rows = $result->fetch(); $i++)
                        {
							$exm_id = $rows['exm_id'];
							?>
						<div class="widget-inner">
							<div class="card-courses-list admin-courses">
								<div class="card-courses-media">
									<img src="../post/<?php echo $rows['photo'];?>" alt=""/>
								</div>
								<div class="card-courses-full-dec">
									<div class="card-courses-title">
										<h4><?php echo $rows['sname'];?></h4>
									</div>
									<div class="card-courses-list-bx">
										<ul class="card-courses-view">
											<li class="card-courses-user">
												<div class="card-courses-user-pic">
													<img src="../post/<?php echo $rows['photo'];?>" alt=""/>
												</div>
												<div class="card-courses-user-info">
													<h5>Post</h5>
													<h4><?php echo $rows['sname'];?></h4>
												</div>
											</li>
                                            <li class="card-courses-categories">
												<h5>Mark</h5>
												<h4><?php echo $rows['deprt'];?></h4>
											</li>                                         							
                                            <li class="card-courses-categories">
												<h5>Date</h5>
												<h4><?php echo $rows['date'];?></h4>
											</li>									
										</ul>
									</div>
									<div class="row card-courses-dec">	                                    	
                                    	<div class="col-md-12">
											<p><?php echo $rows['qstn'];?></p> 
										</div>   
                                        <div class="col-md-4">
                                        	<a href="exam_start1.php<?php echo '?sname='.$rows['sname'];?>" class="btn red radius-xl outline pull-left" style="width:160px;"><span class="fa fa-hand-o-right"> Start</span></a>
										</div>   
										 <div class="col-md-4">
											
										</div>  	
                                         <div class="col-md-4">
											<a href="exam_search.php" class="btn red radius-xl outline pull-right" style="width:160px;">Back</a>
										</div>    
                                                                  
									</div>
								</div>
							</div>
							
						</div>
                        <?php }?>				
                        <!-- End -->
				</div>
                <?php
					}
				?>
				<!-- Your Profile Views Chart END-->
				
			</div>
		</div>
	</main>
	<div class="ttr-overlay"></div>
<?php include("include/js.php");?>
</body>
</html>