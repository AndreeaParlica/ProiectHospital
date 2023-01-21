<?php
    session_start();
    
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
?>