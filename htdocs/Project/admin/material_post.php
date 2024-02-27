<?php
	include("auth.php");
	include('../connect/db.php');
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
							<h4>Material Post</h4>
						</div>
						<div class="widget-inner">
		<form class="edit-profile m-b30" method="post" autocomplete="off" action="action/post_material.php" enctype="multipart/form-data">
								<div class="row">
									<div class="col-12">
										<div class="ml-auto">
											<h3>1. Material Details</h3>
										</div>
									</div>
									<div class="form-group col-4">
										<label class="col-form-label">Subject</label>
										<div>
											<input class="form-control" type="text" name="sname" required>
										</div>
									</div>
                                    <div class="form-group col-4">
										<label class="col-form-label">Department</label>
										<div>                                        	
                                             <input list="deprt" required class="form-control" name="deprt" placeholder="Select">
                                            <datalist id="deprt">
                                                <option value="">Select</option> 
                                                <option>BSc CS</option>
                                                <option>EC</option>
                                                <option>BCom</option>                                 					
                                            </datalist>
										</div>
									</div>
                                    <div class="form-group col-4">
										<label class="col-form-label">Semester</label>
										<div>                                        	
                                            <input list="semstr" required class="form-control" name="semstr" placeholder="Select">
                                            <datalist id="semstr">
                                                <option value="">Select</option> 
                                                <option>First</option>
                                                <option>Second</option>
                                                <option>Third</option>
                                                <option>Fourth</option>
                                                <option>Fifth</option>   
                                                <option>Six</option>                                      					
                                            </datalist>
										</div>
									</div>
                                    <div class="form-group col-4">
										<label class="col-form-label">Module</label>
										<div>
                                        	<input list="mdule" required class="form-control" name="mdule" placeholder="Select">
                                            <datalist id="mdule">
                                                <option value="">Select</option> 
                                                <option>First</option>
                                                <option>Second</option>
                                                <option>Third</option>
                                                <option>Fourth</option>
                                                <option>Fifth</option>                                         					
                                            </datalist>                                        	
										</div>
									</div>
									<div class="form-group col-4">
										<label class="col-form-label">Photo</label>
										<div>
											<input class="form-control" type="file" name="photo" required>										
										</div>
									</div>		
                                    <div class="form-group col-4">
										<label class="col-form-label">Date</label>
										<div>
											<input class="form-control" type="date" name="date" required min="<?php echo date("Y-m-d");?>">										
										</div>
									</div>							
									<div class="seperator"></div>
									
									<div class="col-12 m-t20">
										<div class="ml-auto m-b5">
											<h3>2. Description</h3>
										</div>
									</div>
									<div class="form-group col-12">
										<label class="col-form-label">About</label>
										<div>
											<textarea name="descp" rows="3" class="tinymce form-control" required></textarea>
										</div>
									</div>																		
									<div class="m-form__seperator m-form__seperator--dashed m-form__seperator--space-2x"></div>
									<div class="col-12">
										<button type="submit" class="btn pull-right">Submit</button>
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
<script src="tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
</body>
</html>