<?php

	session_start();
	$email=$_SESSION['email'];
	$_SESSION['email']=$email;
	$email=$_SESSION['email'];
?>
<html>
<head>

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
        	<span class="icon "></span>
			<h1><a href="index.htm">Education Overseas</a></h1>
		</div>
		<div id="menu">
			<ul>
				<li ><a href="index.html" accesskey="1" title="logout">Logout</a></li>
				
			</ul>
		</div>
	</div>
</div>
<div class="wrapper">
	<div id="banner" class="container"><img src="images/banner.jpg" width="1200" height="500" alt="" /></div>
	
	
	<div>
		<form action="searchpage.html" method="POST">
			<div class="container">
				<h1>What do you want to do?</h1>
				<p>Choose what you want.</p>
				<hr>
	
				<button type="submit" class="registerbtn">Search for University</button>
			</div>
		</form>


		
		<form action="edithml.php" method="POST">
			<div class="container">
	
				<button type="submit" class="registerbtn">Edit my Profile</button>
			</div>
  
		</form>


		
		<form action="index.html">
			<div class="container">
				<input type="submit" class="registerbtn" value="Logout" >
			</div>
		</form>
	</div>
	
</div>


</body>
</html>

