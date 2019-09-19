<html>
<head>
<style>
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}

 .back{
	 background-color:white;
	 color:#2056ac;
	 
 }
</style>

	<title> Education Overseas</title>

	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
	<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
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
					<li><a href="index.html" accesskey="1" title="homepage">Homepage</a></li>
					<li class="active"><a href="login.html" accesskey="2" title="login">Login</a></li>
					
				
				</ul>
			</div>
		</div>
	</div>	

	<div class="back">
	
	<?php
		session_start();
		$hn="localhost";
		$un="root";
		$pwd="";
		$db="system";
		$con=mysqli_connect("$hn","$un","$pwd","$db")or die("connection failed");
		$email=$_POST['email'];
		$password=$_POST['password'];
		$_SESSION['email']=$email;
		$_SESSION['password']=$password;
	
		$sql="SELECT * FROM student where email='$email';";
		$result=mysqli_query($con,$sql);
		while($row=mysqli_fetch_assoc($result))
			if($row['password']==$password)
			{
				header("Location: opentype.php", true, 301);
				exit();

			}
			else
			{
				echo "<br><br><br><h3><b><center>Enter Valid Password</center><b></h3><br>";
?>				
				<form action="login.html">
					<input type="submit" class="registerbtn" value="Login"><br><br><br><br><br><br>
				</form>
				</div>
				</body>
				</html>
<?php		
			}
			
			if (mysqli_num_rows($result) == 0)
				{
					echo"<br><br><h3><b><center>Enter valid email</center></b></h3>";
					
?>			
					<form action="login.html">
						<input type="submit" class="registerbtn" value="Login"><br><br><br><br><br><br>
					</form>
					</div>
					</body>
					</html>
<?php
				}
?>
	