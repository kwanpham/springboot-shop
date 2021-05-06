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
                <f:form action="${url}" modelAttribute="category" method="post">
                  <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                    <div class="breadcrumb">
                      <div class="breadcrumb-left">
                        <i class="menu-icon fa fa-tags" aria-hidden="true"></i>
                        <a href="index" class="title_bread"> Danh sách sản phẩm</a>
                        <span style="color:#ccc;margin:0px 15px;font-size:20px;"> /</span>
                        <c:choose>
                          <c:when test="${url != 'add'}">
                            <span class="title_bread">  Sửa nhóm sản phẩm</span>
                          </c:when>
                          <c:otherwise>
                            <span class="title_bread"> Thêm Mới</span>
                          </c:otherwise>
                        </c:choose>
                      </div>
                      <div class="breadcrumb-add">
                        <a class="btn btn-default" href="admin/product">Hủy</a>
                        <input type="submit" value="Lưu Lại" class="btn btn-primary">
                      </div>
                    </div>
                    <!-- /.breadcrumb -->
                  </div>
                  <div class="createandedit">
                    <div class="row">
                      <div class="col-xs-12 col-md-8">
                        <div class="editcreate">
                          <div class="form-group">
                            <label class="control-label" for="ProductName">Tên Danh Mục</label>
                            <f:input type="hidden" path="id"/>
                            <f:input class="form-control" path="name" id="name" name="name" type="text"/>
                          </div>
                          <div class="form-group">
                            <label class="control-label" for="descript_short">Mô tả ngắn</label>
                            <f:textarea rows="10" class="form-control" path="description" id="name" name="description" type="text"/>
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-12 col-md-4">
                        <div class="visible-status">
                          <p class="title_st">Hiển thị</p>
                          <div class="check-st">
                            <div class="show-st">
                              <input type="radio" path="status" name="status" value="1" <c:if test="${category.status == true}">checked</c:if>> <span class="hideshow">Hiện</span>
                              </div>
                              <div class="show-st">
                                <input type="radio" name="status" value="0" <c:if test="${category.status == false}">checked</c:if>> <span class="hideshow">Ẩn</span>
                              </div>
                            </div>
                            <div class="time-stamp">
                              <p class="title_sts"> Thời Gian:</p>
                            <f:input type="text" name="create_time" path="createTime" readonly="readonly" disabled="true"  />
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


