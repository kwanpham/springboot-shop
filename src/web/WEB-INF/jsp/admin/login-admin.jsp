<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Admin | Log in</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/bootstrap/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/bootstrap/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/bootstrap/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/cmscuongle.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/admin_login_custom.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="http://cauthangthanhtuyen.com/cadmin//tmp/public/plugins/iCheck/square/blue.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition login-page" style="background-image: url(http://cauthangthanhtuyen.com/cadmin/tmp/public/images/breadcrumb_bg2.jpg);
          background-size: cover;">
        <div class="login-box">
            <div class="login-logo">
                <a href=""><b>Admin</b>PANEL</a>
            </div>
            <!-- /.login-logo -->
            <div class="login-wrapper">
                <spring:form id="loginForm" modelAttribute="users" action="loginProcess" method="post">
                    <input name="_token" type="hidden" value="">
                    <div class="popup-header">
                        <a href="#" class="pull-left"><i class="fa fa-user-secret" aria-hidden="true"></i></a>
                        <span class="text-semibold">User Login</span>

                        <div class="btn-group pull-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cogs" aria-hidden="true"></i></a>
                            <ul class="dropdown-menu icons-right dropdown-menu-right">
                                <li>
                                    <a href="#forgot_password_modal" data-toggle="modal">
                                        <i class="icon-info"></i>
                                        Forgot password
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="well">
                      <c:choose>
                      <c:when test="${message != null}">
                         <div class="alert alert-danger">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                            <strong>Cảnh báo:</strong><p>${message}</p>
                        </div>
                      </c:when>
                      </c:choose>
                        <div class="form-group has-feedback">
                            <label>Email</label>
                            <input class="form-control form-control-solid placeholder-no-fix" placeholder="Email" name="email" type="text">
                            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                        </div>

                        <div class="form-group has-feedback">
                            <label>Password</label>
                            <input class="form-control form-control-solid placeholder-no-fix" placeholder="Password" name="password" type="password" value="">
                            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                        </div>

                        <div class="row form-actions">
                            <div class="col-xs-6">
                                <div class="checkbox checkbox-success" style="display:none">
                                    <label style="padding-left:0;">
                                        <div class="checker"><span><input class="styled" name="remember" type="checkbox" value="1"></span></div> Remember me?
                                    </label>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <button type="submit" name="login" class="btn btn-warning pull-right">Sign in</button>
                            </div>
                        </div>
                    </div>
                </spring:form>
            </div>
            <!-- /.login-box-body -->
        </div>
        <!-- /.login-box -->

        <!-- jQuery 2.2.3 -->
        <script src="${pageContext.request.contextPath}/resources/admin/js/jquery-2.2.4.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="${pageContext.request.contextPath}/resources/admin/js/icheck.min.js"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>
    </body>
</html>
