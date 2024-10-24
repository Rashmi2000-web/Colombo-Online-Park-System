<!--IT20066420-->
<?php
	include_once 'config.php';
	
?>
<?php
	$remoid = $_POST["Remove ID"];
	$vehicleregno = $_POST["Vehicle Regis.No"];
	$vehitype = $_POST["Vehicle Type"]; 
	$reason = $_POST["Reasons"];  
	
	$sql = "insert into removed_vehicle(remove_id ,veicle_reg_no,vehicle_type,reason)values('','$vehicleregno','$vehitype','$reason')";
	
	if(mysqli_query($conn,$sql)){
		echo "<script>alert('Removed Vehicle details submitted successfully!!')</script>";
		echo "Vehicle Removed successfully.";
		header("Location:AddRemove.html");
		
	}
	
	mysqli_close($conn);
?>