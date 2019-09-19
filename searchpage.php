<html>
<head>

<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/editrial.css" rel="stylesheet" type="text/css" media="all" />
<style>  
h4
{
	background-color:white;
}
h3
{ 
color:white;
font-size:25px;
 }

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
	color: #F3E72A;
} 
td
{
	margin-bottom=20px;
	font-family:Arial;
	font-size:20px;
	background-color=#d4d4dc;
	color:white;
} 
h1 {
	
	color:white;
    font-family: 'Cormorant Garamond', serif;
    font-size: 400%;
}
</style>


</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
        	<span class="icon "></span>
			<h1><a href="index.html">Education Overseas</a></h1>
		</div>
		<h4><br></h4>
		<div id="menu">
			<ul>
				<li class="active"><a href="searchpage.html" accesskey="1" title="search for college">Search for College</a></li>
				<li ><a href="edithml.php" accesskey="2" title="editprofile">Edit Your Profile</a></li>
				<li ><a href="index.html" accesskey="3" title="logout">Logout</a></li>
				
			</ul>
		</div>
	</div>
	<h4><br></h4>

<h1><center>Universities that suit you<br><br></center></h1>
<?php
session_start();
$hn="localhost";
$un="root";
$pwd="";
$db="system";
$con=mysqli_connect("$hn","$un","$pwd","$db")or die("connection failed");
$email=$_SESSION['email'];
$_SESSION['email']=$email;
$degree=$_POST['degree'];
$program=$_POST['program'];
$fee=(int)$_POST['fee'];

$gre=(int)$_POST['gre'];
if($gre==1 && $_POST['grescore']!="")
	$grescore=(float)$_POST['grescore'];
else
	$grescore=0;

$gmat=(int)$_POST['gmat'];
if($gmat==1 && $_POST['gmatscore']!="")
	$gmatscore=(float)$_POST['gmatscore'];
else
	$gmatscore=0;

$act=(int)$_POST['act'];
if($act==1 && $_POST['actscore']!="")
	$actscore=(float)$_POST['actscore'];
else
	$actscore=0;

$sat=(int)$_POST['sat'];
if($sat==1 && $_POST['satscore']!="")
	$satscore=(float)$_POST['satscore'];
else
	$satscore=0;

$lsat=(int)$_POST['lsat'];
if($lsat==1 && $_POST['lsatscore']!="")
	$lsatscore=(float)$_POST['lsatscore'];
else	
	$lsatscore=0;

$toefl=(int)$_POST['toefl'];
if($toefl==1 && $_POST['toeflscore']!="")
	$toeflscore=(float)$_POST['toeflscore'];
else
	$toeflscore=0;

$ielts=(int)$_POST['ielts'];
if($ielts==1 && $_POST['ieltsscore']!="")
	$ieltsscore=(float)$_POST['ieltsscore'];
else
	$ieltsscore=0;

$hostel=(int)$_POST['hostel'];
$scholarship=(int)['scholarship'];
$sports=(int)$_POST['sports'];
$arts=(int)$_POST['arts'];
$country=$_POST['country'];

?>
		<body bgcolor="#423D3D" text="#FEFFF8">
			<center><table cellspacing="4" cellpadding="3">
			<tr>
			<th>University Name</th>
			<th>Location</th>
			<th>City</th>
			<th>Country</th>
			<th>Email</th>
			<th>Phone</th>
			</tr>
<?php
		
		
			
		function printdetails($res)
		{
			while($row=mysqli_fetch_array($res))
				{
?>
					<i>
					<tr>
					<td><center><?php echo $row['uname'];?></center></td>
					<td><center><?php echo $row['location'];?><center></td>
					<td><center><?php echo $row['city'];?><center></td>
					<td><center><?php echo $row['country'];?><center></td>
					<td><center><?php echo $row['email'];?><center></td>
					<td><center><?php echo $row['phone'];?></center></td>
					</tr>
					</i>
<?php
				}
?>
				</table>
				</body>	
				
<?php
		}
		if($country!='-1')
		{
			if($_POST['city']!="")
			{
				$city=$_POST['city'];
				$location=" and country='$country' and city='$city'";
			}
			else
			{	$city="";
				$location=" and country='$country'";
			}
		}
		else
		{
			$city="";
			$location="";
		}			
		if($hostel==1)
			$hos=" and hostel=$hostel";
		else
			$hos="";
		if($scholarship=1)
			$schol=" and scholarship=$scholarship";
		else
			$schol="";
		if($sports=1)
			$spo=" and sports=$sports";
		else
			$spo="";
		if($arts=1)
			$art=" and arts=$arts";
		else
			$art="";
		
		$query="select distinct uname,location, city, country, email,phone 
				from uniadminandfacilities uaf inner join 
				uniprograms up on uaf.unid = up.unid inner join 
				fee f on f.unid = up.unid 
				where up.degree='$degree' and up.program='$program' and 
				grescore<=$grescore and gmatscore<=$gmatscore and satscore<=$satscore and actscore<=$actscore and lsatscore<=$lsatscore and toeflscore<=$toeflscore and ieltsscore<=$ieltsscore and fee<=$fee".$location.$hos.$schol.$spo.$art; 
				$res=mysqli_query($con,$query);
				printdetails($res);	
				
		if (mysqli_num_rows($res)>0)
		{
			
			$sql="insert into search values('$email','$country','$city','$degree','$program',$grescore,$gmatscore,$actscore,$satscore,$lsatscore,$toeflscore,$ieltsscore,$fee,$hostel,$scholarship,$sports,$arts);";
			$result=mysqli_query($con,$sql);
			if($result)
			echo"<h3><b><center><br><br><br> Details stored <br><br> </center></b></h3>";
		}
		else
		{
?> 
			</table></center>
			<center><h3> No Universities Found<h3></center>
			</body>
			
<?php
		}		
?>
		<form action="edithml.php">
		<button type="submit" class="registerbtn">Edit Your Profile</button>
		</form>
		<form action="searchpage.html">
		<button type="submit" class="registerbtn">Search Again</button>
		</form>
		<form>
		<input type="button" class="registerbtn" value="Logout" onclick="location.href = 'login.html';"> </input>
		</form>
		</div>
			</html>
		
		
