<%-- 
    Document   : side-left-navigation
    Created on : Dec 27, 2018, 11:34:26 AM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="sidebar" class="sidebar responsive ace-save-state sidebar-fixed sidebar-scroll">

    <div class="sidebar-shortcuts" id="sidebar-shortcuts" style="margin-top: 35px;">
        <div class="nav-search" id="nav-search">
            <form class="form-search">
                <span class="input-icon">
                    <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                    <i class="ace-icon fa fa-search nav-search-icon"></i>
                </span>
            </form>
        </div>
        <!-- /.nav-search -->

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div>
    <!-- /.sidebar-shortcuts -->

    <ul class="nav nav-list">
        <li>
            <a href="/shop/admin/dashboard">
                <i class="menu-icon fa fa-home" aria-hidden="true"></i>
                <span class="menu-text"> Quản Lí Chung </span>
            </a>

            <b class="arrow"></b>
        </li>

        <li class="">
            <a href="/shop/admin/order/index">
                <i class="menu-icon fa fa-briefcase" aria-hidden="true"></i>
                <span class="menu-text">
                    Đơn hàng
                </span>
            </a>

            <b class="arrow"></b>
        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-tag" aria-hidden="true"></i>
                <span class="menu-text"> Sản Phẩm </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">

                <li class="">
                    <a href="/shop/admin/product/index">
                        <i class="menu-icon fa fa-caret-right"></i> Tất cả sản phẩm
                    </a>

                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="/shop/admin/category/index">
                        <i class="menu-icon fa fa-caret-right"></i> Nhóm sản phẩm
                    </a>

                    <b class="arrow"></b>
                </li>
            </ul>
        </li>

        <!--         <li class="">
    <a href="/admin/customer">
        <i class="menu-icon fa fa-users" aria-hidden="true"></i>
        <span class="menu-text"> Khách hàng </span>

    </a>
    <b class="arrow"></b>
</li> -->

        <li class="">
            <a href="javascript:00" class="dropdown-toggle">
                <i class="menu-icon fa fa-list-alt"></i>
                <span class="menu-text"> Website </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">

                <li class="">
                    <a href="${pageContext.request.contextPath}/admin/config-home/view">
                        <i class="menu-icon fa fa-caret-right"></i> Quản lí trang chủ
                    </a>

                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/admin/slide/index">
                        <i class="menu-icon fa fa-caret-right"></i> Quản lí Slide
                    </a>
                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="${pageContext.request.contextPath}/admin/menu/index">
                        <i class="menu-icon fa fa-caret-right"></i> Quản lí Menu
                    </a>

                    <b class="arrow"></b>
                </li>

            </ul>
        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-pencil-square-o"></i>
                <span class="menu-text"> Blogs </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                    <a href="${pageContext.request.contextPath}/admin/category-post/index">
                        <i class="menu-icon fa fa-caret-right"></i> Danh mục bài viết
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="${pageContext.request.contextPath}/admin/post/index">
                        <i class="menu-icon fa fa-caret-right"></i> Danh sách bài viết
                    </a>

                    <b class="arrow"></b>
                </li>

            </ul>
        </li>


        <li class="">
            <a href="/shop/admin/contact/index">
                <i class="menu-icon fa fa-comments" aria-hidden="true"></i>
                <span class="menu-text"> Thư Liên Hệ </span>
            </a>
            <b class="arrow"></b>
        </li>

        <li class="">
            <a href="${pageContext.request.contextPath}/admin/user/index">
                <i class="menu-icon fa fa-user" aria-hidden="true"></i>
                <span class="menu-text"> Quản trị viên </span>
            </a>
        </li>

        <li class="">
            <a href="${pageContext.request.contextPath}/admin/config/view">
                <i class="menu-icon fa fa-cogs" aria-hidden="true"></i>
                <span class="menu-text"> Cấu hình chung </span>

            </a>
            <b class="arrow"></b>
        </li>

    </ul>
    <!-- /.nav-list -->

</div>