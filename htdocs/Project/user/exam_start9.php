<?php
	include("auth.php");
	include('../connect/db.php');
	$Log_Id=$_SESSION['SESS_USER_ID'];
	$sname=$_GET["sname"];
	$result = $db->prepare("select * from exam where sname='$sname' and qno='9'");
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++)
	{
		$qno=$row["qno"];
		$sname=$row["sname"];
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
				<!-- Your Profile Views Chart -->
				<div class="col-lg-8 m-b30">
					<!-- Start -->                       
						<div class="widget-inner">
							<div class="card-courses-list admin-courses">
								
								<div class="card-courses-full-dec">
									<div class="card-courses-title">
										<h4><?php echo $sname;?> Exam</h4>
                                        <hr>
									</div>
									<div class="card-courses-list-bx">
										<h4>9. <?php echo $qstn;?> </h4>
                                        <form method="get" action="action/exam_start9.php">
                                            <div class="row">
                                                <div class="col-6">
                                                	<input type="hidden" value="<?php echo $qno;?>" name="qno">
                                                    <input type="hidden" value="<?php echo $sname;?>" name="sname">
                                                    <input type="hidden" value="<?php echo $qstn;?>" name="qstn">
                                                    <input type="hidden" value="<?php echo $answr;?>" name="answr">
                                                    <input type="hidden" value="<?php echo $mrk;?>" name="mrk">
                                                    
                                                    <input type="radio" name="qst" value="<?php echo $opta;?>"><b> <?php echo $opta;?></b>   
                                                </div>
                                                <div class="col-6">
                                                     <input type="radio" name="qst" value="<?php echo $optb;?>"><b> <?php echo $optb;?></b>  
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-6">
                                                    <input type="radio" name="qst" value="<?php echo $optc;?>"><b> <?php echo $optc;?></b>   
                                                </div>
                                                <div class="col-6">
                                                     <input type="radio" name="qst" value="<?php echo $optd;?>"><b> <?php echo $optd;?></b>  
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-12">
                                                   <input type="submit" value="Next" class="pull-right btn">
                                                </div>
                                            </div>
                                        </form>
									</div>	                                   
								</div>
							</div>
							
						</div>
                        <!-- End -->
                        <!-- End -->
				</div>
				<!-- Your Profile Views Chart END-->
				<div class="col-lg-4 m-b30">
					<div class="widget-box">
						<div class="widget-inner">
							<div class="noti-box-list">
                            	<!-- Start -->
                                	<?php
										$gt=0;
										$result = $db->prepare("select count(*) from examattend where Log_Id='$Log_Id'");
										$result->execute();
										for($i=0; $row = $result->fetch(); $i++)
										{
											$gt=$gt+$row['count(*)']."";
										}												
											?>                                        
                                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                                        <script type="text/javascript">
                                          google.charts.load("current", {packages:["corechart"]});
                                          google.charts.setOnLoadCallback(drawChart);
                                          function drawChart() {
                                            
                                            var data = google.visualization.arrayToDataTable([
                                            
                                              ['Exam', 'Question'],
                                              ['Question', <?php echo $gt;?>],
                                              ['Balance', <?php echo 10-$gt;?>],  						
                                            ]);
                                    
                                            var options = {         
                                              is3D: true,
                                            };
                                    
                                            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                                            chart.draw(data, options);
                                          }
                                        </script>
                                        <div id="piechart_3d" style="width: 550px; height: 400px; position:absolute; left:-50px; top:100px;"></div>
                                <!-- End -->
								<!-- Start -->
                                	<div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-12">
                                        <div class="widget-card widget-bg1">					 
                                            <div class="wc-item">                                              
                                                <span class="wc-des">
                                                    Quesion
                                                </span>
                                                <span class="wc-stats">
                                                    <span class="counter">
                                                        <?php
															$t=0;
															$result = $db->prepare("select count(*) from examattend where Log_Id='$Log_Id' ");
															$result->execute();
															for($i=0; $row = $result->fetch(); $i++)
															{
																$t=$t+$row['count(*)']."";
															}
															echo $t;
														?>
                                                    </span>
                                                </span>		
                                                <div class="progress wc-progress">
                                                    <div class="progress-bar" role="progressbar" style="width: 78%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <span class="wc-progress-bx">
                                                    <span class="wc-change">
                                                        Balance
                                                    </span>
                                                    <span class="wc-number ml-auto">
                                                        <?php
															echo 10-$t;
														?>
                                                    </span>
                                                </span>
                                            </div>				      
                                        </div>
                                    </div>
                                <!-- End -->
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-lg-12 m-b30">
					
				</div>
			</div>
		</div>
	</main>
	<div class="ttr-overlay"></div>
<?php include("include/js.php");?>
</body>
</html>