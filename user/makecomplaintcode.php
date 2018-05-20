<?php session_start();?> 

<?php
	include('dbfunctions.php');

    $connection = new createCon();
    $connection->connect();
    $id=$_SESSION['user_email'];

    $sqluser="SELECT `userid` FROM `signup` WHERE `email`='$id'";
    $resid=mysqli_query($connection->myconn,$sqluser);
    $row=mysqli_fetch_array($resid);
    $uid=$row['userid'];

    
    if(isset($_POST['submit']))
	  {
		  $status='0';
		  $deptname=$_POST['deptname'];
		  $deptloc=$_POST['deptloc'];
		  $adhar=$_POST['adhar'];
		  $uname=$_POST['uname'];
		  $email=$_POST['email'];
		  $msg=$_POST['msg'];
		  $dat=$_POST['dat'];

		  
		  $sql="INSERT INTO `complaint`(`deptname`, `areaname`, `adharno`, `username`, `email`, `message`, `status`,`datecomp`,`userid`) VALUES ('$deptname','$deptloc','$adhar','$uname','$email','$msg','0','$dat','$uid')";
		  
		  $result=mysqli_query($connection->myconn,$sql);
		  
		  
		  
		  
		  if($result)
		  {
			  ?>

                 <script type="text/javascript">

                  alert("Complaints are done successfully");
				   window.location.href="index.php";
				</script>
			<?php
		  }
		  
		  else
		  {
			?>

                 <script type="text/javascript">

                  alert("un success");
				  window.location.href="makecomplaint.php";
				</script>
			<?php  
		  }
		  
	  }

?>