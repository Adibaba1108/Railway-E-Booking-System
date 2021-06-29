<?php include('header1.php'); ?>
			 
			  <div class="container">
			
				<div class="list-group homelist">
					<?php 
							session_start();
							if($_SESSION['sid']==session_id())
							{
								$_SESSION['myvar1']=session_id();
						?>

				  <a href="../admin/add_train.php" class="list-group-item ">Add Train</a>
				  <a href="../admin/add_train_status.php" class="list-group-item ">Add Train Status</a>
				  <a href="../admin/add_route.php" class="list-group-item " >Add Route</a>
				  <a href="../admin/canceltrain.php"class="list-group-item ">Cancel Train</a>
				  <a href="../admin/viewcomplaint.php"class="list-group-item ">View Complaints</a>	
					<a href="../admin/logout.php"class="list-group-item ">Logout</a>
					<?php 
				     	}
						else
						{
							header("location:login.php");
						}
					?>
				</div>
			  </div>
<?php include('footer1.php'); ?>
 

       