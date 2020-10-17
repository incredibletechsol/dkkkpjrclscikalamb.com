<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>jquery smartmarquee</title>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<link href="css/jquery.smartmarquee.css" rel="stylesheet">
	<script src="js/jquery.smartmarquee.js"></script>
	<script language="javascript">
		$(document).ready(function () {
			$("div").smartmarquee();
		});
	</script> 
	<style type="text/css">
		
		a { cursor: pointer }
		.example {
			height: 300px;
			width: 300px;
		
		}
		.example .container {
			margin: 0;
			padding: 0;
		}
		.example .container li {
			width: 285px;
			margin: 0 0 0 5px;
			padding: 5px 0 5px 0;
			border-bottom: 1px dotted #999
		}
	</style>
</head>

<body>
	
	<?php
	include('conn.php');	
	$result = mysqli_query($con,"SELECT * FROM tbl_news order by id desc") or die(mysqli_error());
	$numrows=mysqli_num_rows($result);
	if($numrows > 0 )
	{
	echo  "<div class='smartmarquee example'>";
	echo  "<ul class='container'>";
	while($row = mysqli_fetch_array($result))
		{
    	$description= wordwrap($row[3],190,"<br>\n");
		echo "<li><img src='images/arrow.png' border='0'><a href='allnews.php'>$description</a></li>";
		}
	 echo "</ul>";		
	 echo "</div>";	
	 }	
	 ?>	
</body>
</html>