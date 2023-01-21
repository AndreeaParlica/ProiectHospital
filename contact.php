<?php 

// $con=mysqli_connect("localhost","root","","myhmsdb3");
$cleardb_url = parse_url(getenv("CLEARDB_DATABASE_URL"));
$cleardb_server = $cleardb_url["host"];
$cleardb_username = $cleardb_url["user"];
$cleardb_password = $cleardb_url["pass"];
$cleardb_db = substr($cleardb_url["path"],1);
$active_group = 'default';
$query_builder = TRUE;

$con = mysqli_connect($cleardb_server, $cleardb_username, $cleardb_password, $cleardb_db);


if(isset($_POST['btnSubmit']))
{
	$name = $_POST['txtName'];
	$email = $_POST['txtEmail'];
	$contact = $_POST['txtPhone'];
	$message = $_POST['txtMsg'];
	$captcha = $_POST["captcha"];

	$query="insert into contact(name,email,contact,message,captcha) values('$name','$email','$contact','$message','$captcha');";
	$result = mysqli_query($con,$query);
	
	if($result)
    {
    	echo '<script type="text/javascript">'; 
		echo 'alert("Message sent successfully!");'; 
		echo 'window.location.href = "contact.html";';
		echo '</script>';
    }
}
// session_start();
// //verifica captcha code
// 	if(!empty($_POST["btnSubmit"])) {
// 	$name = $_POST["txtName"];
// 	$email = $_POST["txtEmail"];
// 	$captcha = $_POST["captcha"];
// 	$captchaUser = filter_var($_POST["captcha"]);
// 	if(empty($captcha)) {
// 	  $captchaError = array(
// 		"status" => "alert-danger",
// 		"message" => "Inserati un cod captcha."
// 	  );
// 	}
// 	else if($_SESSION['CAPTCHA_CODE'] == $captchaUser){
// 	  $captchaError = array(
// 		"status" => "alert-success",
// 		"message" => "Formular trimis cu succes."
// 	  );
// 	} else {
// 	  $captchaError = array(
// 		"status" => "alert-danger",
// 		"message" => "Captcha invalid."
// 	  );
// 	}
//   }  