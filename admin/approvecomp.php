<?php session_start();?>
	<?php

include('dbfunctions.php');

    $connection = new createCon();
    $connection->connect();

    $comp_id=$_GET['id'];
    
    $sql="UPDATE `complaint` SET `status`='1' WHERE `compid`='$comp_id'";
    

    $result=mysqli_query($connection->myconn,$sql);
	
	$row=mysqli_affected_rows($connection->myconn);
	if($row==1)
	{
		
		?>
		<script type="text/javascript">
			alert("complaints are approved successfully");
			window.location.href = "viewcomp.php";

		</script>

		<?php
	}
	
	else
	{
		?>
			<script type="text/javascript">
				alert("failed.try again !");
				window.location.href = "viewcomp.php";

			</script>

			<?php
		
	}

    
?>
