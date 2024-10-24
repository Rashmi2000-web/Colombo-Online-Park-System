<!--IT20066420-->
<?php
	include_once 'config.php';
	
?>
<?php
	$vnumber = $_POST["Vehicle No"];
	$name = $_POST["Owner Name"];
	$contno = $_POST["Contact No"]; 
	$regino = $_POST["Register No"]; 
	$Requpart = $_POST["Required parts"]; 
	
	$sql = "insert into vehicle_repair(Vehicle_no,owner_name,contact_no,register_no,required_parts)values('','$name','$contno','$regino','$Requpart')";
	
	if(mysqli_query($conn,$sql)){
		echo "<script>alert('Vehicle Repair details submitted successfully!!')</script>";
		echo "Vehicle Repair Details successfully.";
		header("Location:Repair.html");
	}
	
	
	mysqli_close($conn);
?>