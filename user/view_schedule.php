<?php include('header2.php'); 
require '../dbconnect.php';
session_start();
$flag=1;$flag1=1;
function test_input($data) {
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}

?>	
			 

<?php 
if(isset($_POST['submit']))
{ 
	$train_id=test_input($_POST['train_id']); 

    $flag=0;
    $statement = $db->prepare("SELECT * FROM trains WHERE TrainNumber= ?");
	$statement->execute(array($train_id));

	


?>	
				<div class = "container">
			  <div class=" forminput">
				<table class="table tablebg" style="color:black; font-size:1.5rem; padding:3px;">
					<tr>
						<th>Train Number</th>
						<th>Train Name</th>
						<th>Category</th>
						<th>Source Station</th>
						<th>Destination Station</th>
					</tr>
<?php 
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	foreach ($result as $row) { 

?>
					<tr>
						<td><?php echo $row['TrainNumber'] ?> </td>
						<td><?php echo $row['TrainName'] ?> </td>
						<td><?php echo $row['Category']?></td>
						<td><?php echo $row['Start']?></td>
						<td><?php echo $row['End']?></td>
					</tr>
<?php } ?>			
				</table>
	
	
				<table class="table tablebg" style="color:black; font-size:1.5rem; padding:3px;">
				  <h2 style="color:black;">Train Schedule</h2>
					<tr>
						<th>Train ID</th>
						<th>stop number</th>
						<th>Station ID</th>
						<th>Arrival Time</th>
						<th>Departure Time</th>
					</tr>
<?php 
	$statement = $db->prepare("SELECT * FROM routes WHERE TrainNumber= ?");
	$statement->execute(array($train_id));
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	foreach ($result as $row) { 

?>
					<tr>
						<td><?php echo $row['TrainNumber'] ?>  </td>
						<td><?php echo $row['StopNumber'] ?> </td>
						<td><?php echo $row['StationName'] ?> </td>
						<td><?php echo date('H:m | d-m-y',strtotime($row['ArrivalTime'])) ?>  </td>
						<td><?php echo date('H:m | d-m-y',strtotime($row['DepartureTime'])) ?>  </td>
					</tr>
				
			
<?php 
};
?>
</table></div></div></div>
<?php
include('footer2.php'); 
}else { if($flag1!=0){
?>
			
				<div class = "container">
				<form style="margin-top:50px;" class="form-horizontal forminput" action="" method="post">
				
				  <div class="form-group">
					  <label class="col-sm-3 control-label"  for="sel1" style="color:black; font-size:1.4rem; padding:5px;" >Select Train Name</label>
					   <div class="col-sm-6" >
					  <select class="form-control forminp" id="sel1" name="train_id">
					    <option value="">Select train Name ....</option>
					  
					  <?php

						$statement = $db->prepare("SELECT * FROM  trains");
						$statement->execute(array());
						$result = $statement->fetchAll(PDO::FETCH_ASSOC);
							foreach ($result as $row) {
						?>
							<option value="<?php echo $row['TrainNumber']; ?>"><?php echo $row['TrainName'];?></option>
						<?php
								}

						?>
						</select>
						</div>
					</div>
					 <div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
					  <input type="submit" value="Submit" name="submit" />
					</div>
				  </div>
				</form>	
			</div>
							</div>
					
<?php }} ?>
<?php 
if($flag==1 && $flag1==1){
include('footer2.php');};
?>