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
                <f:form action="${url}" modelAttribute="slide" method="post" enctype="multipart/form-data">
                  <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                    <div class="breadcrumb">
                      <div class="breadcrumb-left">
                        <i class="menu-icon fa fa-tags" aria-hidden="true"></i>
                        <a href="index" class="title_bread"> Danh Slide</a>
                        <span style="color:#ccc;margin:0px 15px;font-size:20px;"> /</span>
                        <span class="title_bread"> ${slide.name}</span>
                      </div>
                      <div class="breadcrumb-add">
                        <a class="btn btn-default" href="admin/slide">Hủy</a>
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
                            <label class="control-label" for="ProductName">Tên Slide</label>
                            <f:input type="hidden" path="id"/>
                            <f:input class="form-control" path="name" id="name" name="name" type="text" required="required" />
                          </div>
                           <div class="form-group">
                            <label class="control-label" for="ProductName">URL</label>
                            <f:input type="hidden" path="id"/>
                            <f:input class="form-control" path="url" id="url" name="url" type="text" required="required" />
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-12 col-md-4">
                        <div class="visible-status">
                          <p class="title_st">Hiển thị</p>
                          <div class="check-st">
                            <div class="show-st">
                              <f:radiobutton path="status" name="status" value="1" /> <span class="hideshow">Hiện</span>
                              </div>
                              <div class="show-st">
                                <f:radiobutton name="status" value="0" path="status" /> <span class="hideshow">Ẩn</span>
                              </div>
                            </div>
                          </div>
                          <div class="des-product-info-images" id="files1">
                            <div class="row">
                              <div class="col-xs-12">
                                <div class="file-upload">
                                  <div class="file-select">
                                    <div class="file-select-button" id="fileName">Chọn file</div>
                                    <div class="file-select-name" id="noFile">Không có file nào chọn</div> 
                                  <f:input type="file" id="chooseFile" path="image" name="image"/>
                                </div>
                              </div>
                              <div class="tepi">
                                <div class="pull-left">
                                  <p style="font-weight:bold;">Hình ảnh</p>
                                </div>
                              </div>
                              <div class="jiuos">
                                <img width="130px" src="${pageContext.request.contextPath}/resources/images/${slide.image}" alt="${slide.name}"/>
                              </div>
                            </div>
                          </div>
                          <div id="showme">

                          </div>
                          <div id="show_video"></div>
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


