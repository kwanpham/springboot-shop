<%-- 
    Document   : config_home
    Created on : Jan 18, 2019, 10:04:44 AM
    Author     : thang
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
            <c:if test="${not empty status_ok}">
              <div class="upadate-success">
                <p>Cập nhật thông tin cấu hình thành công!</p>
              </div> 
              <script type="text/javascript">
                setTimeout(function () {
                  $('.upadate-success').fadeOut(1000);
                }, 4000);
              </script>
            </c:if>
            <div class="curd" style="margin-right:70px;width:100%;">
              <f:form action="${pageContext.request.contextPath}/admin/config-home/update" id="form_menu" modelAttribute="config" method="post">
                <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                  <div class="breadcrumb">
                    <div class="breadcrumb-left">
                      <i class="menu-icon fa fa-user" aria-hidden="true"></i>
                      <a href="/shop/admin/config-home" class="title_bread"> Quản lí trang chủ</a>
                      <span style="color:#ccc;margin:0px 15px;font-size:20px;"> /</span>
                      <span class="title_bread"> Thay đổi thông tin</span>
                    </div>
                    <div class="breadcrumb-add">

                      <input type="submit" value="Lưu Lại Thay Đổi" class="btn btn-primary">
                    </div>
                  </div>
                  <!-- /.breadcrumb -->

                </div>
                <div class="createandedit">
                  <f:input type="hidden" path="hid" />
                  <div class="row">
                    <div class="editcreate">

                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Nhóm sản phẩm hiển thị ở trang chủ 1
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="Collection1_Status">Hiển thị nhóm sản phẩm 1</label>
                          <div class="col-md-10">
                            <div class="checkbox">
                              <input <c:choose> <c:when test="${config.onColletion1 == true}"> checked="checked" </c:when></c:choose> path="onColletion1"   class="check-box" name="onColletion1" type="checkbox">
                                  <span class="field-validation-valid text-danger"></span>
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <label class="control-label col-md-2" for="title_category1">Tiêu đề nhóm sản phẩm 1</label>
                              <div class="col-md-10">
                            <f:input class="form-control" path="titleCollection1" name="titleCollection1" type="text" />
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="Collection_home1">Chọn nhóm sản phẩm 1</label>
                          <div class="col-md-10">
                            <span class="custom-dropdown custom-dropdown-white">
                              <f:select class="form-control custom-dropdown-select" name="collectionList1" path="collectionList1">
                                <option value="0">====Chọn Nhóm Sản Phẩm====</option>
                                <c:forEach items="${category_config}" var="p" varStatus="itr">
                                  <option  <c:choose> <c:when test="${config.collectionList1 == p.id}"> selected </c:when></c:choose>  value="${p.id}">${p.name}</option>
                                </c:forEach>
                              </f:select>
                            </span>
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="button_more1">Link nút xem thêm nhóm sản phẩm 1</label>
                          <div class="col-md-10">
                            <f:input class="form-control text-box single-line" path="urlCollection1" name="urlCollection1" type="text" />
                          </div>
                        </div>

                      </div>

                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Nhóm sản phẩm hiển thị ở trang chủ 2
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="onColletion2">Hiển thị nhóm sản phẩm 2</label>
                          <div class="col-md-10">
                            <div class="checkbox">
                              <input <c:choose> <c:when test="${config.onColletion2 == true}"> checked="checked" </c:when></c:choose> path="onColletion2"   class="check-box" name="onColletion2" type="checkbox">
                                  <span class="field-validation-valid text-danger"></span>
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <label class="control-label col-md-2" for="title_category1">Tiêu đề nhóm sản phẩm 2</label>
                              <div class="col-md-10">
                            <f:input class="form-control" path="titleCollection2" name="titleCollection2" type="text" />
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="Collection_home2">Chọn nhóm sản phẩm 2</label>
                          <div class="col-md-10">
                            <span class="custom-dropdown custom-dropdown-white">
                              <f:select class="form-control custom-dropdown-select" name="collectionList2" path="collectionList2">
                                <option value="0">====Chọn Nhóm Sản Phẩm====</option>
                                <c:forEach items="${category_config}" var="p" varStatus="itr">
                                  <option  <c:choose> <c:when test="${config.collectionList2 == p.id}"> selected </c:when></c:choose>  value="${p.id}">${p.name}</option>
                                </c:forEach>
                              </f:select>
                            </span>
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="button_more1">Link nút xem thêm nhóm sản phẩm 2</label>
                          <div class="col-md-10">
                            <f:input class="form-control text-box single-line" path="urlCollection2" name="urlCollection2" type="text" />
                          </div>
                        </div>

                      </div>



                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Nhóm sản phẩm hiển thị ở trang chủ 3
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="onColletion3">Hiển thị nhóm sản phẩm 3</label>
                          <div class="col-md-10">
                            <div class="checkbox">
                              <input <c:choose> <c:when test="${config.onColletion3 == true}"> checked="checked" </c:when></c:choose> path="onColletion3"   class="check-box" name="onColletion3" type="checkbox">
                                  <span class="field-validation-valid text-danger"></span>
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <label class="control-label col-md-2" for="titleCollection3">Tiêu đề nhóm sản phẩm 3</label>
                              <div class="col-md-10">
                            <f:input class="form-control" path="titleCollection3" name="titleCollection3" type="text" />
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="Collection_home3">Chọn nhóm sản phẩm 3</label>
                          <div class="col-md-10">
                            <span class="custom-dropdown custom-dropdown-white">
                              <f:select class="form-control custom-dropdown-select" name="collectionList3" path="collectionList3">
                                <option value="0">====Chọn Nhóm Sản Phẩm====</option>
                                <c:forEach items="${category_config}" var="p" varStatus="itr">
                                  <option  <c:choose> <c:when test="${config.collectionList3 == p.id}"> selected </c:when></c:choose>  value="${p.id}">${p.name}</option>
                                </c:forEach>
                              </f:select>
                            </span>
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="button_more1">Link nút xem thêm nhóm sản phẩm 3</label>
                          <div class="col-md-10">
                            <f:input class="form-control text-box single-line" path="urlCollection3" name="urlCollection3" type="text" />
                          </div>
                        </div>
                      </div>



                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Nhóm sản phẩm hiển thị ở trang chủ 4
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="onColletion4">Hiển thị nhóm sản phẩm 4</label>
                          <div class="col-md-10">
                            <div class="checkbox">
                              <input <c:choose> <c:when test="${config.onColletion4 == true}"> checked="checked" </c:when></c:choose> path="onColletion4"   class="check-box" name="onColletion4" type="checkbox">
                                  <span class="field-validation-valid text-danger"></span>
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <label class="control-label col-md-2" for="titleCollection4">Tiêu đề nhóm sản phẩm 4</label>
                              <div class="col-md-10">
                            <f:input class="form-control" path="titleCollection4" name="titleCollection4" type="text" />
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="Collection_home4">Chọn nhóm sản phẩm 4</label>
                          <div class="col-md-10">
                            <span class="custom-dropdown custom-dropdown-white">
                              <f:select class="form-control custom-dropdown-select" name="collectionList4" path="collectionList4">
                                <option value="0">====Chọn Nhóm Sản Phẩm====</option>
                                <c:forEach items="${category_config}" var="p" varStatus="itr">
                                  <option  <c:choose> <c:when test="${config.collectionList4 == p.id}"> selected </c:when></c:choose>  value="${p.id}">${p.name}</option>
                                </c:forEach>
                              </f:select>
                            </span>
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="button_more1">Link nút xem thêm nhóm sản phẩm 4</label>
                          <div class="col-md-10">
                            <f:input class="form-control text-box single-line" path="urlCollection4" name="urlCollection4" type="text" />
                          </div>
                        </div>
                      </div>



                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Nhóm sản phẩm hiển thị ở trang chủ 5
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="onColletion5">Hiển thị nhóm sản phẩm 5</label>
                          <div class="col-md-10">
                            <div class="checkbox">
                              <input <c:choose> <c:when test="${config.onColletion5 == true}"> checked="checked" </c:when></c:choose> path="onColletion5"   class="check-box" name="onColletion5" type="checkbox">
                                  <span class="field-validation-valid text-danger"></span>
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <label class="control-label col-md-2" for="titleCollection5">Tiêu đề nhóm sản phẩm 5</label>
                              <div class="col-md-10">
                            <f:input class="form-control" path="titleCollection5" name="titleCollection5" type="text" />
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="Collection_home5">Chọn nhóm sản phẩm 5</label>
                          <div class="col-md-10">
                            <span class="custom-dropdown custom-dropdown-white">
                              <f:select class="form-control custom-dropdown-select" name="collectionList5" path="collectionList5">
                                <option value="0">====Chọn Nhóm Sản Phẩm====</option>
                                <c:forEach items="${category_config}" var="p" varStatus="itr">
                                  <option  <c:choose> <c:when test="${config.collectionList5 == p.id}"> selected </c:when></c:choose>  value="${p.id}">${p.name}</option>
                                </c:forEach>
                              </f:select>
                            </span>
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="button_more1">Link nút xem thêm nhóm sản phẩm 5</label>
                          <div class="col-md-10">
                            <f:input class="form-control text-box single-line" path="urlCollection5" name="urlCollection5" type="text" />
                          </div>
                        </div>
                      </div>



                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Nhóm sản phẩm hiển thị ở trang chủ 6
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="onColletion6">Hiển thị nhóm sản phẩm 6</label>
                          <div class="col-md-10">
                            <div class="checkbox">
                              <input <c:choose> <c:when test="${config.onColletion6 == true}"> checked="checked" </c:when></c:choose> path="onColletion6"   class="check-box" name="onColletion6" type="checkbox">
                                  <span class="field-validation-valid text-danger"></span>
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <label class="control-label col-md-2" for="titleCollection6">Tiêu đề nhóm sản phẩm 6</label>
                              <div class="col-md-10">
                            <f:input class="form-control" path="titleCollection6" name="titleCollection6" type="text" />
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="Collection_home6">Chọn nhóm sản phẩm 6</label>
                          <div class="col-md-10">
                            <span class="custom-dropdown custom-dropdown-white">
                              <f:select class="form-control custom-dropdown-select" name="collectionList6" path="collectionList6">
                                <option value="0">====Chọn Nhóm Sản Phẩm====</option>
                                <c:forEach items="${category_config}" var="p" varStatus="itr">
                                  <option  <c:choose> <c:when test="${config.collectionList6 == p.id}"> selected </c:when></c:choose>  value="${p.id}">${p.name}</option>
                                </c:forEach>
                              </f:select>
                            </span>
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="button_more1">Link nút xem thêm nhóm sản phẩm 6</label>
                          <div class="col-md-10">
                            <f:input class="form-control text-box single-line" path="urlCollection6" name="urlCollection6" type="text" />
                          </div>
                        </div>
                      </div>



                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Nhóm Blog hiển thị trang chủ
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="Blog_Status">Hiển thị nhóm tin tức</label>
                          <div class="col-md-10">
                            <div class="checkbox">
                              <input <c:choose> <c:when test="${config.onBlog == true}"> checked="checked" </c:when></c:choose> path="onBlog"   class="check-box" name="onBlog" type="checkbox">
                                  <span class="field-validation-valid text-danger"></span>
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <label class="control-label col-md-2" for="titleBlog">Tiêu đề nhóm tin tức</label>
                              <div class="col-md-10">
                            <f:input class="form-control" path="titleBlog" name="titleBlog" type="text" />
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="blogList">Chọn nhóm Blog tin tức </label>
                          <div class="col-md-10">
                            <span class="custom-dropdown custom-dropdown-white">
                              <f:select class="form-control custom-dropdown-select" name="blogList" path="blogList">
                                <option value="0">====Chọn Nhóm Bài Biết====</option>
                                <c:forEach items="${post_config}" var="p" varStatus="itr">
                                  <option  <c:choose> <c:when test="${config.blogList == p.id}"> selected </c:when></c:choose>  value="${p.id}">${p.name}</option>
                                </c:forEach>
                              </f:select>
                            </span>
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-2" for="button_more1">Link nút xem thêm blog</label>
                          <div class="col-md-10">
                            <f:input class="form-control text-box single-line" path="urlBlog" name="urlBlog" type="text" />
                          </div>
                        </div>

                      </div>

                    </div>
                  </div>
                </div>
              </f:form>
            </div>

          </div>
        </div>
      </div>
      <!-- /.page-content -->
    </div>
    <jsp:include page="footer.jsp" />
  </div>
  <!-- /.main-container -->
  <!-- inline scripts related to this page -->
</body>
</html>       

<style>
  .form-group {
    overflow: hidden;
  }
  .upadate-success{
    position: fixed;
    bottom: 0px;
    background: #000;
    opacity: 0.7;
    left: 145px;
    width: 100%;
    z-index: 999;
  }

  .upadate-success p{
    height: 70px;
    line-height: 81px;
    color: #fff;
    text-align: center;
    font-size: 17px;
  }
</style>