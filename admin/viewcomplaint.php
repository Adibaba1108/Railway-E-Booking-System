<?php include('header1.php'); 
require '../dbconnect.php';
session_start();

$statement = $db->prepare("SELECT * FROM complaints");
	$statement->execute(array($_SESSION['myvar1']));
?>
<div class = "container">
  <div class=" forminput">
			<table class="table tablebg" style="color:black; font-size:1.5rem; padding:3px;">
					<tr>
                        <th>Complaint Date</th>
						<th>Subject</th>
						<th>Description</th>
					</tr>
					
<?php 
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	foreach ($result as $row) { 

?>
					<tr>
						<td><?php echo $row['Complaint_date'] ?></td>
						<td><?php echo $row['Subject'] ?></td>
						<td><?php echo $row['Description'] ?></td>
					</tr>
<?php } ?>
				</table></div>
	</div>
<?php include('footer1.php'); ?>