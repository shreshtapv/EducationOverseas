<html>
<head>
<style>
table
{
	width=100%; 
	margin-top=15px; 
	margin-bottom=25px;
	background-color=#A84A4A;
} 
th
{
	font-family: "Trebuchet MS", Arial, Verdana; 
	font-size:35px;  
	padding: 5px;
	border-bottom-color: #CDC1A7;
	background-color:#2056ac
	color: white ;
} 
td
{
	margin-bottom=20px;
	font-family:Arial;
	font-size:20px;
	color:#2056ac;
}
</style>

	<title> Education Overseas</title>

	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
	<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/register.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="css/editrial.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<span class="icon 	"></span>
				<h1><a href="index.htm">Education Overseas</a></h1>
			</div>
			
			<div id="menu">
				<ul>
				<li ><a href="searchpage.html" accesskey="1" title="search for college">Search for College</a></li>
				<li class="active"><a href="edithml.php" accesskey="2" title="editprofile">Edit Your Profile</a></li>
				<li ><a href="index.html" accesskey="3" title="logout">Logout</a></li>
				
				</ul>
			</div>
		</div>
	</div>
	
	<div class="wrapper">
		
		


<?php
session_start();
	$dbhost="localhost";
	$username="root";
	$pwd="";
	$db="system";
	$con=mysqli_connect($dbhost,$username,$pwd,$db) or die("connection failed");
	
   
 

        $email = $_SESSION['email'];
		$_SESSION['email'] = $email;
		$cpassword = $_POST['cpassword'];
		$npassword = $_POST['npassword'];
		$name = $_POST['name'];
        $phone=$_POST['phone'];
		$city=$_POST['city'];
		
		
		function printdetails()
		{
?>			
			
			<form action="searchpage.html">
				<pre><input type="submit" class="registerbtn" value="Search For College"></pre>
			</form>
			<form action="index.html">
				<pre><input type="submit" class="registerbtn" value="Logout" ></pre>
			</form>
		</div>	
<?php		
		}

		
		$sql="select * from student where email='$email'";
		$check=mysqli_query($con,$sql);
		
		if($check)
		{
			while($row=mysqli_fetch_assoc($check))
				
				if($row['password']==$cpassword)
				{
?>			
		
<?php
			
					$query = "UPDATE student SET password='$npassword',name='$name',phone='$phone',city='$city' where email='$email'";
					$result = mysqli_query($con,$query);
				
				
					if($result)
					{	
?>				
						<center><table cellspacing="4" cellpadding="3">
							<tr>
							<th>Email</th>
							<th>Name</th>
							<th>Phone</th>
							<th>City</th>
							</tr>
<?php							
						$fmsg = "<center><b>Updated Successfully.</b></center>";
						echo"<br><br>$fmsg<br><br>";
						$get="select email,name,phone,city from student where email='$email'";
						$ret=mysqli_query($con,$get);
						if (!$ret) {
    printf("Error: %s\n", mysqli_error($con));
    exit();
}
						while($row=mysqli_fetch_array($ret))
						{
?>							
							<i>
							<tr>
							<td><center><?php echo $row['email'];?></center></td>
							<td><center><?php echo $row['name'];?><center></td>
							<td><center><?php echo $row['phone'];?><center></td>
							<td><center><?php echo $row['city'];?><center></td>
							</tr>
							</i>
							</table>
							<center>
<?php					}		
						printdetails();
					}
					else
					{
						$fmsg ="<center><pre><b>Updation Failed</b></pre></center>";
						echo"<br><br>$fmsg<br><br>";
?>			
						<div>
							<form action="edithml.php">
								<br><input type="submit" class="registerbtn" value="Try Again">
							</form>
<?php		
						printdetails();
					}
				}
				
				else
				{
					echo"<center><b><br><br>Enter Correct Password.</b></center>";
?>			
							<form action="edithml.php">
								<br><input type="submit" class="registerbtn" value="Try Again">
							</form>
<?php		
						printdetails();					
					
				}
		}
		else
		{
			echo"<br><br>Session completed. Login Again.<br><br>";
?>			
			<form action="index.html">
				<br><input type="submit" class="registerbtn" value="Logout" >
			</form>
<?php
		}		
    
?>