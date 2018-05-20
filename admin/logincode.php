<?php

   session_start();
?>
<?php
 include('dbfunctions.php');

    $connection = new createCon();
    $connection->connect();
    
if(isset($_POST['btnlgn']))
{
	$email=$_POST['email'];
	$pwd=$_POST['password'];
}
	 $sql="SELECT `adminemail`, `password` FROM `admin` WHERE `adminemail`='$email' AND `password`='$pwd'";
     $result=mysqli_query($connection->myconn,$sql);
    
     $row=mysqli_num_rows($result);
     if($row==1)
	 {
		 $_SESSION['email']=$email;
		
		 ?>
   <script type="text/javascript">
   alert("login success");
	  window.location.href="home.php";

</script>

<?php
	 }
else
{
	?>
   <script type="text/javascript">
   alert("email and password are wrong");
    window.location.href="index.php";

</script>

<?php
}
?>