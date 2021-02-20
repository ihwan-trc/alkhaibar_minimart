<!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <title>Login</title>
    <link rel="icon" type="image/png" href="<?php echo base_url('assets/') ?>/img/favicon.png"/>
    <link rel="stylesheet" href="assets/login/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
      <div class="login">
<form action="<?php echo base_url('login/auth') ?>" method="post">
          <div class="avatar">
            <i class="fa fa-user"></i>
          </div>

          <h2>Login Form</h2>

          <div class="box-login">
            <i class="fas fa-envelope-open-text"></i>
            <input required="required" class="form-control" placeholder="Username" name="username" id="username" />
          </div>

          <div class="box-login">
            <i class="fas fa-lock"></i>
            <input type="password" required="required" class="form-control" placeholder="Password" name="password" id="password" />
          </div>

          <button type="submit" name="login" class="btn-login">Login</button>
      </div>
</form>
  <script src="<?php echo base_url() ?>/assets/js/jquery-3.3.1.js"></script></script>
  <script  src="<?php echo base_url('assets/') ?>login/script.js"></script>
  <script  src="<?php echo base_url('assets/') ?>js/sweetalert.min.js"></script>
  <script>
    $(document).ready(function(){document.getElementById("username").focus()});
    $('form').attr('autocomplete', 'off');
    var error="<?php echo $this->session->flashdata('msg'); ?>";error&&swal(error,{buttons:!1,timer:2e3});
  </script>
  </head>
  </html>