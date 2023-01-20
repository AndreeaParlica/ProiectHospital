<?php
    session_start();
    
    if(!empty($_POST["send"])) {
      $name = $_POST["name"];
      $email = $_POST["email"];
      $captcha = $_POST["captcha"];
      $captchaUser = filter_var($_POST["captcha"]);
      if(empty($captcha)) {
        $captchaError = array(
          "status" => "alert-danger",
          "message" => "inserati un cod captcha."
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