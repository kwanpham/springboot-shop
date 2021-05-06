<%-- 
    Document   : edit_category
    Created on : Dec 30, 2018, 8:50:48 PM
    Author     : Ngoc Hoan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
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
                <f:form action="${url}" onsubmit="return" method="POST" modelAttribute="post" enctype="multipart/form-data">
                  <f:input type="hidden" path="id"/>
                  <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                    <div class="breadcrumb">
                      <div class="breadcrumb-left">
                        <i class="menu-icon fa fa-tags" aria-hidden="true"></i>
                        <a href="admin/post" class="title_bread"> Danh sách tin tức</a>
                        <span style="color:#ccc;margin:0px 15px;font-size:20px;"> /</span>
                        <c:choose>
                          <c:when test="${url != 'add'}">
                            <span class="title_bread">  Sửa tin tức</span>
                          </c:when>
                          <c:otherwise>
                            <span class="title_bread"> Thêm Mới</span>
                          </c:otherwise>
                        </c:choose>
                      </div>
                      <div class="breadcrumb-add">
                        <a class="btn btn-default" href="index">Hủy</a>
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
                            <label class="control-label" for="name">Tên bài viết</label>
                            <f:input class="form-control" path="name" required="required" id="name" name="name" type="text" />
                          </div>
                          <div class="form-group">
                            <label class="control-label" for="Content">Mô tả ngắn</label>
                            <f:textarea name="note" rows="6"  path="note" />
                          </div> 
                          <div class="form-group">
                            <label class="control-label" for="Content">Nội Dung</label>
                            <f:textarea name="description" id="txt_content" rows="10" path="description" />
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-12 col-md-4">
                        <div class="visible-status">
                          <p class="title_st">Hiển thị</p>
                          <div class="show-st">
                            <f:radiobutton path="status" name="status" value="true" /> <span class="hideshow">Hiện</span>
                          </div>
                          <div class="show-st">
                            <f:radiobutton path="status" name="status" value="false"/> <span class="hideshow">Ẩn</span>
                          </div>
                        </div>
                        <div class="time-stamp">
                          <p class="title_sts"> Thời Gian:</p>
                          <f:input type="text" readonly="readonly" path="createTime" disabled="true" name="created_at" />
                        </div>
                      </div>
                      <div class="bot-des-more">
                        <h3 class="title_pl">Phân loại</h3>
                        <div class="form-group">
                          <label class="control-label" for="CategoryID">Nhóm Tin Tức</label>
                          <span class="custom-dropdown custom-dropdown-white">
                            <f:select class="form-control custom-dropdown-select chosen-select" path="categoryId" >
                              <c:forEach items="${categorypost}" var="categorypost">
                                <f:option value="${categorypost.id}" >${categorypost.name}</f:option>
                              </c:forEach>
                            </f:select>
                          </span>
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
                            <div class="tepi" style="margin-top:40px">
                              <div class="pull-left">
                                <p style="font-weight:bold;">Hình ảnh</p>
                              </div>
                            </div>
                            <div class="jiuos">
                              <img src="${pageContext.request.contextPath}/resources/images/${post.image}" style="width: 130px;"/>
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
                <div class="text-left" style="margin-top:20px;">
                  <i class="fa fa-angle-double-left" aria-hidden="true" style="color:red !important;"></i> <a href="/Admin/post?Length=0" style="color:red;font-size:12px;">Trở lại trang trước</a>
                </div>
              </f:form>
            </div>
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
