<%-- 
    Document   : edit_category
    Created on : Dec 30, 2018, 8:50:48 PM
    Author     : Ngoc Hoan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="header.jsp" />
    <body class="no-skin">
        <jsp:include page="nav-top.jsp" />
        <div class="main-container ace-save-state" id="main-container">
            <jsp:include page="sideleft-navigation.jsp" />
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="page-content">
                        <!--hiển thị nội dung ở đây-->
                        <div class="internew-content">
                            <div class="title_cat">
                                <h3 style="color: red">${status}</h3>
                            </div>
                            <div class="curd" style=" margin-right:70px;  width:100%;">
                                <f:form action="${url}" modelAttribute="contact" method="post">
                                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                                        <div class="breadcrumb">
                                            <div class="breadcrumb-left">
                                                <i class="menu-icon fa fa-tags" aria-hidden="true"></i>
                                                <a href="index" class="title_bread"> Danh sách người dùng</a>
                                                <span style="color:#ccc;margin:0px 15px;font-size:20px;"> /</span>
                                                <span class="title_bread"> ${contact.name}</span>
                                            </div>
                                            <div class="breadcrumb-add">
                                                <a class="btn btn-default" href="/shop/admin/contact/index">Hủy</a>
                                            </div>
                                        </div>
                                        <!-- /.breadcrumb -->
                                    </div>
                                    <div class="createandedit">
                                        <div class="row">
                                            <div class="col-xs-12 col-md-8">
                                                <div class="editcreate">
                                                    <div class="form-group">
                                                        <label class="control-label" for="ProductName">Tên Thành Viên</label>
                                                        <f:input type="hidden" path="id" />
                                                        <f:input class="form-control" path="name" id="name" name="name" type="text" readonly="true" />
                                                    </div>
                                                </div>
                                                    <div class="editcreate">
                                                    <div class="form-group">
                                                        <label class="control-label" for="email">Email</label>
                                                        <f:input type="hidden" path="id"/>
                                                        <f:input class="form-control" path="email" id="name" name="name" type="text" readonly="true" />
                                                    </div>
                                                </div>
                                                 <div class="editcreate">
                                                    <div class="form-group">
                                                        <label class="control-label" for="password">Địa chỉ</label>
                                                        <f:input type="hidden" path="id"/>
                                                        <f:input class="form-control" path="address" id="address" name="address" type="text" readonly="true" />
                                                    </div>
                                                </div> 
                                                    <div class="editcreate">
                                                    <div class="form-group">
                                                        <label class="control-label" for="password">Số điện thoại</label>
                                                        <f:input type="hidden" path="id"/>
                                                        <f:input class="form-control" path="phone" id="phone" name="phone" type="text" readonly="true" />
                                                    </div>
                                                </div>
                                                    <div class="editcreate">
                                                    <div class="form-group">
                                                        <label class="control-label" for="password">Ghi chú</label>
                                                        <f:input type="hidden" path="id"/>
                                                        <f:input class="form-control" path="description" id="description" name="description" type="text" readonly="true" />
                                                    </div>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </f:form>
                        </div>
                        <div class="content-layout">
                        </div>
                    </div>
                </div>
                <!-- /.page-content -->
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </div>
    <!-- /.main-container -->
    <!-- inline scripts related to this page -->
</body>
</html>


