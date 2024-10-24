<!--IT20066420-->
<?php
	include_once 'config.php';
	
?>
<?php
	$vehiregisno = $_POST["Vehicle Regis.No"];
	$vehitype = $_POST["Vehicle Type"];
	$vehiweight = $_POST["Vehicle Weight"]; 
	$ownername= $_POST["Owner Name"];
	$adds = $_POST["Address"];
	$idno = $_POST["ID number"];
	$phoneno = $_POST["Phone No"];
	
	$sql = "insert into hr(vehicle_reg_no ,vehicle_type,vehicle_weight,owner_name,address,id_no,phone_no)values('$vehiregisno','$vehitype','$VehicleWeight','$ownername','$adds,','$idno','$phoneno')";
	
	if(mysqli_query($conn,$sql)){
		echo "<script>alert('Added Vehicle details submitted successfully!!')</script>";
		echo "Vehicle Added successfully.";
		header("Location:AddRemove.html");
		
	}
	
	mysqli_close($conn);
?>