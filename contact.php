<?php 
$cleardb_url = parse_url(getenv("CLEARDB_DATABASE_URL"));
$cleardb_server = $cleardb_url["host"];
$cleardb_username = $cleardb_url["user"];
$cleardb_password = $cleardb_url["pass"];
$cleardb_db = substr($cleardb_url["path"],1);
$active_group = 'default';
$query_builder = TRUE;


// $con=mysqli_connect("localhost","root","","myhmsdb3");

	$con = mysqli_connect($cleardb_server, $cleardb_username, $cleardb_password, $cleardb_db);

	if(isset($_POST['btnSubmit']))
	{
		$name = $_POST['txtName'];
		$email = $_POST['txtEmail'];
		$contact = $_POST['txtPhone'];
		$message = $_POST['txtMsg'];

		$query="insert into contact(name,email,contact,message) values('$name','$email','$contact','$message');";
		$result = mysqli_query($con,$query);
		
		if($result)
		{
			echo '<script type="text/javascript">'; 
			echo 'alert("Mesaj trimis cu succes!");'; 
			echo 'window.location.href = "contact.html";';
			echo '</script>';
		}

}