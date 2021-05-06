<%-- 
    Document   : index_category
    Created on : Dec 30, 2018, 2:54:15 PM
    Author     : Ngoc Hoan
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
                                <h3>Danh Sách người dùng</h3>
                                <h3 style="color: red">${status}</h3>
                            </div>

                            <div class="content-layout">
                                <div class="breadcrumb-add">
                                    <a href="add">Thêm Mới</a>
                                </div>
                            </div>

                            <table class="table table-responsive tbl_business" id="example">
                                <thead>
                                    <tr>
                                        <th class="checkbox_delete_option_choice">
                                            <div class="vueipli" style="display: none;">
                                                <div class="pull-left">
                                                    <a href="javascript::0" class="romoveItem"></a>
                                                </div>
                                                <div class="pull-left global_choise">
                                                    <a href="javascript::0" class="chooise_option">Chọn thao tác</a>
                                                    <ul class="sub_chooise">
                                                        <li><a href="javascript::0" class="remove_select">Xóa sản phẩm đã chọn</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </th>
                                        <th>
                                            Tên người dùng
                                        </th>
                                        <th>
                                            Quyền hạn
                                        </th>
                                        <th>Tùy Chỉnh</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listUser}" var="c">
                                        <tr class="text-center">
                                            <td width="50px" class="text-center">
                                                <input type="checkbox" name="detele_check[]" value="136" class="check_item">
                                            </td>
                                            <td>
                                                ${c.fullname}
                                            </td>
                                            <td class="text-center">
                                                <p class="btn btn-${c.role?"success":"info"} btn-xs text-center">${c.role?"SuperAdmin":"Admin"}</p>
                                            </td>
                                            <td class="text-center">
                                                <a class="view_sua btn btn-xs btn-success" href="edit?userId=${c.id}">Sửa</a>
                                                <a class="btn_confirm btn btn-xs btn-danger" href="delete?userId=${c.id}">Xóa</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
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
