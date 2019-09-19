<?php


	session_start();
	$dbhost="localhost";
	$username="root";
	$pwd="";
	$db="system";
	$con=mysqli_connect($dbhost,$username,$pwd,$db) or die("connection failed");
	$email=$_SESSION['email'];
	if(isset($email))
	$_SESSION['email']=$email;
	
	
	$query="select name,phone,city from student where email='$email' ";
	$result = mysqli_query($con,$query);
	while($row=mysqli_fetch_array($result))
	{
		$name=$row['name'];
		$phone=$row['phone'];
		$city=$row['city'];
	}

	
?>	

<html>
<head>

<title> Education Overseas</title>

<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/register.css" rel="stylesheet" type="text/css" media="all"/>
<script language="javascript">
function check()
{
var n = document.f1.phone.value;
if(n.length<10 || n.length>10)
	{
		alert("Phone number must be 10 digits");
		return false;
	}

	else return true;

}
</script>

</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
        	<span class="icon"></span>
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
	
	
	<div>
	<form action="edit.php" onsubmit="return check()" method="POST">
  <div class="container">
    <h1>Edit you Profile</h1>
    <hr>

	<label for="password"><b>Current Password</b></label>
    <input type="password" placeholder="Enter Password" id="cpassword" name="cpassword"  required>
	
    <label for="password"><b>New Password</b></label>
    <input type="password" placeholder="Enter Password" id="npassword" name="npassword" required>

    
   
	<label for="name"><b>Name</b></label>
	<input type="text" placeholder="John Doe" id="name" name="name" value="<?php echo $name; ?>" required>
	
	<label for="phone"><b>Mobile</b></label>
	<input type="text" placeholder="1234567890" id="phone" name="phone" value="<?php echo $phone; ?>" required>
	
	<label for="city"><b>City</b><label>
	<input type="text" placeholder="City" id="city" name="city" value="<?php echo $city; ?>" required>
	<hr>
	
    <button type="submit" class="registerbtn">Submit</button>
  </div>

</form>
	</div>
	
</div>


</body>
</html>

