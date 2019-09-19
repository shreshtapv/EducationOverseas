
<html>
<head>
<style>
.registerbtn {
  align:center;
  bottom:0%;  
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 450px;
  border: none;
  cursor: pointer;
  width: 30%;
  height:10%
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}
</style>
<title> Education Overseas</title>

<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/register.css" rel="stylesheet" type="text/css" media="all"/>


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
					<li class="active"><a href="index.html" accesskey="1" title="homepage">Homepage</a></li>
					<li ><a href="login.html" accesskey="2" title="login">Login</a></li>
				
				</ul>
			</div>
		</div>
	</div>
	
	<div class="wrapper">
		<div id="banner" class="container"><img src="images/banner.jpg" width="1200" height="500" alt="" /></div>
		
		<div id="welcome" class="container">
    	
			<div class="title">
				<h2>Welcome to Education Overseas</h2>
			</div>
				<p>This is <strong>Education Overseas</strong>, a free, functioning web-based application. It lets you search for a college or university ideal for your requirements and gives you lots of options to choose from. It's hassle-free and a lot less time taking than you doing the research required for each individual element you require.So you're pretty much free to search with whatever requirements you have and save a lot of time in research provided you give us credit for it. Have fun :) </p>
		</div>

<?php
session_start();
	$dbhost="localhost";
	$username="root";
	$pwd="";
	$db="system";
	$con=mysqli_connect($dbhost,$username,$pwd,$db) or die("connection failed");
	
   
 

        $email    = $_POST['email'];
		$password = $_POST['password'];
		$name     = $_POST['name'];
        $phone    = $_POST['phone'];
		$city     = $_POST['city'];
		$_SESSION['email']   = $email;
		$_SESSION['password']= $password;
		$_SESSION['name']    = $name;
		$_SESSION['name']    = $name;
		$_SESSION['phone']   = $phone;
		$_SESSION['city']    = $city;

		
		$sql="select * from student";
		$check=mysqli_query($con,$sql);
		while($row=mysqli_fetch_assoc($check))
			if($row['email']==$email)
			{
				echo"<center><pre>User already registered</pre></center>";
?>			
		<form action="login.html">
			<input type="submit" class="registerbtn" value="Login">
		</form>
		
<?php
			}
        $query = "INSERT INTO student (email,password,name,phone,city) VALUES ('$email','$password','$name','$phone','$city')";
        $result = mysqli_query($con,$query);
        if($result)
		{
            $fmsg = "<center><b>User Created Successfully.</b></center>";
			echo"$fmsg";
?>			
		<form action="login.html">
			<input type="submit" class="registerbtn" value="Login">
		</form>
		</div>
		</body>
		</html>
<?php		
        }
		else
		{
            $fmsg ="<center><pre><b>User Registration Failed</b></pre></center>";
			echo"$fmsg";
?>			
		<form action="index.html">
		<input type="submit" class="registerbtn" value="Signup">
		</form>
		</div>
		</body>
		</html>
<?php		
        }
    
?>
	
	