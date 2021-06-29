<?php include('header2.php'); ?>
			 

<?php

    require '../dbconnect.php';

	if(isset($_POST['submit']))
	{
		$pnr=$_POST['pnr'];


		$statement = $db->prepare("SELECT TrainNumber,booking_date,no_of_seats FROM tickets WHERE pnr = ?");
		$statement->execute(array($pnr));
		$result = $statement->fetch(PDO::FETCH_ASSOC);
		if(!empty($result))
		{
		        $statement1 = $db->prepare("UPDATE train_status SET available_seats=available_seats + ?,booked_seats=booked_seats - ? WHERE TrainNumber=? AND available_Date = ?");
	        	$statement1->execute(array($result['no_of_seats'],$result['no_of_seats'],$result['TrainNumber'],$result['booking_date']));
				$statement = $db->prepare("DELETE FROM tickets WHERE pnr=?");
				$statement->execute(array($pnr));
				
				
				?> 
				<div class="container">
				<div align="center" class="col-md-3">
				<table class="table tablebg" style="color:black; font-size:1.8rem;">
					<tr>
						<td>Your Requested is completed </td>
					</tr>
					<tr>
						<td>Your have cancelled the seat.</td>
					</tr>
				</table>
				</div>
		</div>

				<?php
				
			}else{
			?> 
			<div class="container">
			<div align="center" class="col-md-3">
				<table class="table tablebg" style="color:black; font-size:1.8rem;">
					<tr>
						<td>You entered an invalid PNR</td>
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
<?php include('footer2.php'); ?>