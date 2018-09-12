<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="zh-cn">
  <!--<![endif]-->

  <head>
    <meta charset="utf-8">
    <title>用户登录</title>
    <meta name="description" content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Stylesheets -->
    <!-- Bootstrap is included in its original form, unaltered -->
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <!-- Related styles of various icon packs and plugins -->
    <link rel="stylesheet" href="/static/css/plugins.css">
    <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
    <link rel="stylesheet" href="/static/css/main.css">
    <link rel="stylesheet" href="/static/css/themes.css">
    <!-- END Stylesheets -->
    <!-- Modernizr (browser feature detection library) -->
    <script src="/static/js/vendor/modernizr-3.3.1.min.js"></script>
  </head>

  <body>

    <img src="/static/img/placeholders/layout/login1.jpg" style="z-index:2;display:none;" alt="Full Background" class="full-bg animation-pulseSlow"
      id="login">
    <img src="/static/img/placeholders/layout/login.jpg" alt="Full Background" class="full-bg animation-pulseSlow">
    <!-- END Full Background -->

    <!-- Login Container -->
    <div id="login-container">
      <!-- Login Header -->
      <h1 class="h2 text-light text-center push-top-bottom animation-pullDown">
        <i class="fa fa-cube text-light-op"></i>
        <strong>仓库管理系统</strong>
      </h1>
      <!-- END Login Header -->

      <!-- Login Block -->
      <div class="block animation-fadeInQuick">
        <!-- Login Title -->
        <div class="block-title">
          <h2>登录</h2>
        </div>
        <!-- END Login Title -->

        <!-- Login Form -->
        <form class="form-horizontal" id="submit" action="${j_spring_security_check}" method='POST'>
          <div class="form-group">
            <label for="username" class="col-xs-12">用户名</label>
            <div class="col-xs-12">
              <input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名" required>
            </div>
          </div>
          <div class="form-group">
            <label for="password" class="col-xs-12">密码</label>
            <div class="col-xs-12">
              <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required>
            </div>
          </div>
          <div class="form-group form-actions">
            <div class="col-xs-6">
              <label class="csscheckbox csscheckbox-primary">
                <input type="checkbox" id="login-remember-me" name="remember-me">
                <span></span> 记住我
              </label>
            </div>
            <div class="col-xs-6 text-right">
              <button class="btn btn-effect-ripple btn-sm btn-info" type="submit">登录</button>
            </div>
          </div>

          <input type="hidden" name="${_csrf.parameterName}"
                 value="${_csrf.token}" />
        </form>
      </div>

      <!-- Footer -->
      <footer class="text-muted text-center animation-pullUp">
        <small>
          <span id="year-copy"></span> &copy;
          <a href="#" target="_blank">王晨韬</a> 版权所有
        </small>
      </footer>
      <!-- END Footer -->
    </div>
    <!-- END Login Container -->

    <!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
    <script src="/static/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="/static/js/vendor/bootstrap.min.js"></script>
    <script src="/static/js/plugins.js"></script>
    <script src="/static/js/app.js"></script>

    <!-- Load and execute javascript code used only in this page -->
    <script src="/static/js/pages/readyLogin.js"></script>
    <script>$(function () { ReadyLogin.init(); });</script>
  </body>

</html>