<?php

if($_POST['submit_btn']) {

include('conn.php');

	$headers = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	$name=$_POST['name'];
	$email=$_POST['email'];
	$mobno=$_POST['contact'];
	$message=$_POST['message'];
	
	$query="insert into tbl_enquiry(name,email,contact,message) values('$name','$email','$mobno','$message')";

	echo "<script> window.location='contactus.php?msg=succenquiry'</script>";

}
?>