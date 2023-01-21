<?php 
session_start();
$con=mysqli_connect("localhost","root","","myhmsdb3");

//verifica captcha code
if(!empty($_POST["btnSubmit"])) {
	$name = $_POST["txtName"];
	$email = $_POST["txtEmail"];
	$captcha = $_POST["captcha"];
	$captchaUser = filter_var($_POST["captcha"]);
	if(empty($captcha)) {
	  $captchaError = array(
		"status" => "alert-danger",
		"message" => "Inserati un cod captcha."
	  );
	}
	else if($_SESSION['CAPTCHA_CODE'] == $captchaUser){
	  $captchaError = array(
		"status" => "alert-success",
		"message" => "Formular trimis cu succes."
	  );
	} else {
	  $captchaError = array(
		"status" => "alert-danger",
		"message" => "Captcha invalid."
	  );
	}
  }  

if(isset($_POST['btnSubmit']))
{
	$name = $_POST['txtName'];
	$email = $_POST['txtEmail'];
	$contact = $_POST['txtPhone'];
	$message = $_POST['txtMsg'];
	$captcha = $_POST["captcha"];
    $captchaUser = filter_var($_POST["captcha"]);
	
	$query="insert into contact(name,email,contact,message,captcha) values('$name','$email','$contact','$message','$captchaUser');";
	$result = mysqli_query($con,$query);
	  if($result)
    {
    	echo '<script type="text/javascript">'; 
		echo 'alert("Message sent successfully!");'; 
		echo 'window.location.href = "contact.html";';
		echo '</script>';
    }
}