<?php include('header1.php'); ?>
			 

<?php

    require '../dbconnect.php';

	if(isset($_POST['submit']))
	{
		$train_number=$_POST['train_number'];


		$statement = $db->prepare("SELECT TrainNumber FROM trains WHERE TrainNumber = ?");
		$statement->execute(array($train_number));
		$result = $statement->fetch(PDO::FETCH_ASSOC);
		if(!empty($result))
		{
		        
				$statement = $db->prepare("DELETE FROM trains WHERE TrainNumber=?");
				$statement->execute(array($train_number));
				
				
				?> 
				<div class="container">
				<div style="align:center" class="col-md-3">
				<table class="table tablebg" style="color:black; font-size:1.8rem;">
					<tr>
						<td>Your Requested is completed </td>
					</tr>
					<tr>
						<td>The train is cancel on your kind request.</td>
					</tr>
				</table>
				</div>
		</div>

				<?php
				
			}else{
			?> 
			<div class="container">
			<div style="align:center" class="col-md-3">
				<table class="table tablebg" style="color:black; font-size:1.8rem;">
					<tr>
						<td>You entered an invalid Train Number</td>
					</tr>
					<tr>
						<td>Unable to Cancel.</td>
					</tr>
				</table>
				</div>
			</div>
			<?php
			}
		}
			
			
	

?>
<?php include('footer1.php'); ?>