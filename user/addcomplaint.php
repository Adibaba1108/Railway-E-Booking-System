
 <?php 
 require '../dbconnect.php';
function test_input($data) {
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}

if(isset($_POST['submit']))
{
    $complaint_date=date('Y-m-d H:i:s',strtotime('today IST'));
    $subject=test_input($_POST['subject']);
    $description=test_input($_POST['description']);
 
	 
 $statement = $db->prepare("INSERT INTO complaints (Complaint_date,Subject,Description) VALUES (?,?,?)");
		
	$statement->execute(array($complaint_date,$subject,$description));
	header("location:userhome.php");
}
?>

<?php include('header2.php'); ?>
			 <div class = "container">
			  <div class="forminput">
			  
				<script>
			function validate_from()
			{
				
				x=document.forms["adform"]["subject"].value;
				if(x==null || x=="")
				{
					alert("Enter Subject");
					return false;
				}
				x=document.forms["adform"]["description"].value;
				if(x==null || x=="")
				{
					alert("Enter Description");
					return false;
				}
			
			}
		</script>
		
				<form class="form-horizontal" name="adform" action="" onsubmit="return validate_from()" method="post">
				  <div class="form-group">
					<label for="subject" class="col-sm-3 control-label" style="color:black; font-size:1.6rem; padding:5px;">Subject</label>
					<div class="col-sm-8">
					  <input type="text" class="form-control" id="inputEmail3" name="subject" placeholder="Subject">
					</div>
				  </div>
				  <div class="form-group">
					<label for="description" class="col-sm-3 control-label" style="color:black; font-size:1.6rem; padding:5px;">Description</label>
					<div class="col-sm-8">
					  <input type="text" class="form-control" id="inputPassword3" name="description" placeholder="Description">
					</div>
				  </div>
				 
				 
				  <div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
					  <a><input type="submit" value="Submit" name="submit" /></a>
					</div>
				  </div>
				</form>
		</div>
			  </div>
<?php include('footer2.php'); ?>
 

       