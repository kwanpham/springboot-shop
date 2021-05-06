<%-- 
    Document   : nav-top
    Created on : Dec 27, 2018, 12:07:20 PM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="navbar" class="navbar navbar-default          ace-save-state navbar-fixed-top">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left">
            <a href="${pageContext.request.contextPath}/admin/dashboard" class="navbar-brand">
                <img src="https://dilac.com.vn/Content/Admin/assets/images/tazweb.png" alt="tazweb" width="150px">
            </a>

            <a target="_blank" style="margin-top: 16px; display: inline-block;" href="${pageContext.request.contextPath}"><img src="https://dilac.com.vn/Content/Admin/assets/images/eye.png" alt="eye" /></a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">

                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="https://dilac.com.vn/Content/Admin/assets/images/avatar.png " alt="Avatar" />
                        <span class="user-info">
                            <small>Welcome,</small>
                            ${accountAdmin}
                        </span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
<!--                        <li>
                            <a href="javascript:0;" data-toggle="modal" data-target=".nn-modal-change-pass">
                                <i class="ace-icon fa fa-cog"></i> Đổi mật khẩu
                            </a>
                        </li>-->

                        <li class="divider"></li>

                        <li>
                            <a href="/shop/admin/logout">
                                <i class="ace-icon fa fa-power-off"></i> Đăng xuất
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- /.navbar-container -->
</div>