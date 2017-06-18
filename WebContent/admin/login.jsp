<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login BookTravel</title>
  <link rel="stylesheet" href=" admin-assets/css/custom-admin.css ">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="plugins/ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href=" admin-assets/css/AdminLTE.min.css ">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href=" admin-assets/css/skins/_all-skins.min.css ">
  <!-- iCheck -->
  <link rel="stylesheet" href=" plugins/iCheck/flat/blue.css ">
  <!-- Morris chart -->
  <link rel="stylesheet" href=" plugins/morris/morris.css ">
  <!-- jvectormap -->
  <link rel="stylesheet" href=" plugins/jvectormap/jquery-jvectormap-1.2.2.css ">
  <!-- Date Picker -->
   <link rel="stylesheet" href=" plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href=" plugins/daterangepicker/daterangepicker.css">
  
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href=" plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css ">
  <style>
    
          @import url(http://fonts.googleapis.com/css?family=Roboto:400);
          body {
            background-color:#fff;
            -webkit-font-smoothing: antialiased;
            font: normal 14px Roboto,arial,sans-serif;
          }

          .container {
            padding: 25px;
            position: fixed;
          }

          .form-login {
            background-color: #EDEDED;
            padding-top: 10px;
            padding-bottom: 20px;
            padding-left: 20px;
            padding-right: 20px;
            border-radius: 15px;
            border-color:#d2d2d2;
            border-width: 5px;
            box-shadow:0 1px 0 #cfcfcf;
          }

          h4 { 
           border:0 solid #fff; 
           border-bottom-width:1px;
           padding-bottom:10px;
           text-align: center;
         }

         .form-control {
          border-radius: 10px;
        }

        .wrapper {
          text-align: center;
        }

  </style>

</head>
<body>
   <div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
          <form action="loginAction" method="post">
            <div class="form-login">
              <h4>BookTravel Admin</h4>
              <input type="email"  id="email" name="email" class="form-control input-sm chat-input" placeholder="Nhập Email của bạn"  required/>
              </br>
              <input type="password"  id="password" name="password" class="form-control input-sm chat-input" placeholder="Nhập Mật khẩu" required />
              </br>
            <div class="wrapper">
              <span class="group-btn">  
              <button type="submit"  class="btn btn-info btn-md">Đăng Nhập <i class="fa fa-sign-in"></i></button>   
                
              </span>
            </div>
          </div>
          </form>
        </div>
    </div>
</div>
<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="plugins/jQuery/jquery-3.2.1.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="admin-assets/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="admin-assets/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="admin-assets/js/demo.js"></script>
</body>
</html>