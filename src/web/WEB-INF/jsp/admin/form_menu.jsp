
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%
  SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm");
  String date = sdf.format(new Date());
%>
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





            <div class="curd" style="margin-right:70px;width:100%;">

              <f:form action="${url}" id="form_menu" modelAttribute="menu" method="post">
                <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                  <div class="breadcrumb">
                    <div class="breadcrumb-left">
                      <i class="menu-icon fa fa-user" aria-hidden="true"></i>
                      <a href="/shop/admin/menu/index" class="title_bread"> Danh sách Menu</a>
                      <span style="color:#ccc;margin:0px 15px;font-size:20px;"> /</span>
                      <span class="title_bread"> 
                        <c:choose>
                          <c:when test="${url == 'add'}">
                            Thêm Mới
                          </c:when> 
                          <c:when test="${url == 'update'}">
                            Chỉnh sửa - ${menu.menuName}
                          </c:when>  
                        </c:choose>
                      </span>
                    </div>
                    <div class="breadcrumb-add">
                      <a class="btn btn-default" href="/shop/admin/menu/index">Hủy</a>
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
                          <label class="control-label">Thứ tự hiển thị</label>

                          <f:input class="form-control text-box single-line" path="sequence" name="sequence" type="number"  />
                          <f:input type="hidden" path="menuId" />
                          <f:input type="hidden" path="createdAt" />
                        </div>

                        <div class="form-group">
                          <label class="control-label" for="MenuName">Tên Menu</label>

                          <f:input class="form-control text-box single-line" path="menuName" name="menuName" type="text" />

                        </div>






                        <div class="form-group page_content" style="display: none;">
                          <label class="control-label" for="PageContent">Trang Nội Dung</label>

                          <f:textarea cols="20" id="txtContent" path="pageContent" name="pageContent" rows="4"></f:textarea>

                          </div>

                          <div class="form-group link_lienket" style="display: none;">
                            <label class="control-label" for="PageLink">Link Liên Kết</label>

                          <f:input class="form-control text-box single-line" path="urlPage" name="urlPage" type="text" />
                          <span class="field-validation-valid text-danger" data-valmsg-for="PageLink" data-valmsg-replace="true"></span>

                        </div>





                      </div>




                    </div>



                    <div class="col-xs-12 col-md-4">
                      <div class="visible-status">
                        <p class="title_st">Hiển thị</p>
                        <div class="check-st">
                          <div class="show-st">
                            <input type="radio" path="status" name="status" value="1" <c:if test="${menu.status == true}">checked</c:if>> <span class="hideshow">Hiện</span>
                            </div>
                            <div class="show-st">
                              <input type="radio" path="status" name="status" value="0" <c:if test="${menu.status == false}">checked</c:if>> <span class="hideshow">Ẩn</span>
                            </div>
                          </div>

                          <div class="time-stamp">
                            <p class="title_sts"> Thời Gian:</p>
                            <input  type="text" value="<%= date%>" disabled="">
                        </div>
                      </div>

                      <div class="bot-des-more">
                        <h3 class="title_pl">Phân loại</h3>

                        <div class="form-group">
                          <label class="control-label" >Danh mục Cha</label>
                          <span class="custom-dropdown custom-dropdown-white">
                            <f:select path="parents" id="MenuParents" class="form-control custom-dropdown-select" name="parents">
                              <option value="0" selected="">Danh Mục Gốc</option>
                              <c:forEach items="${listMenuParents}" var="p" varStatus="itr">
                                <option  <c:choose> <c:when test="${menu.parents == p.menuId}"> selected </c:when></c:choose>  value="${p.menuId}">${p.menuName}</option>
                              </c:forEach>
                            </f:select>
                          </span>
                        </div>


                        <div class="form-group">
                          <label class="control-label">Chọn Kiểu Menu</label>

                          <span class="custom-dropdown custom-dropdown-white">
                            <f:select path="pageStyle" name="PageStyle" id="PageStyle" class="form-control custom-dropdown-select">
                              <option value="0">Chọn Kiểu Menu</option>
                              <option value="1">Nhóm Liên Kết</option>
                              <option value="3">Liên Kết URL</option>
                            </f:select>
                          </span>
                        </div>


                        <div class="form-group theloai_page" style="display: none;">

                          <label class="control-label" for="FormatPage">Thể Loại Trang</label>
                          <span class="custom-dropdown custom-dropdown-white">
                            <f:select id="FormatPage" path="formatPage" class="form-control custom-dropdown-select">
                              <option value="0">===Chọn Thể Loại Trang===</option>
                              <option value="1">Liên Kết Sản Phẩm</option>
                              <option value="2">Liên Kết Bài Viết</option>
                            </f:select>
                          </span>
                          <span class="field-validation-valid text-danger" data-valmsg-for="FormatPage" data-valmsg-replace="true"></span>
                        </div>


                        <div class="form-group group_lienket" style="display: none;">
                          <label class="control-label " for="GroupLink">Nhóm Liên Kết</label>
                          <span class="custom-dropdown custom-dropdown-white">
                            <f:select id="GroupLink" path="groupLink" name="groupLink" class="form-control custom-dropdown-select">

                            </f:select>
                          </span>
                        </div>





                      </div>

                    </div>


                  </div>
                </div>
              </f:form>
            </div>


            <script type="text/javascript">
              function readURL(input) {
                if (input.files && input.files[0]) {
                  $('.noset-image').hide();
                  $('.change_image').css("display", "block");
                  var reader = new FileReader();

                  reader.onload = function (e) {
                    $('#image_showed')
                            .attr('src', e.target.result);
                  };

                  reader.readAsDataURL(input.files[0]);
                }
              }
            </script>


            <script>
              $('#form_menu').submit(function () {
                if ($('#PageStyle').val() == '0') {
                  alert("Kiểu menu chưa được chọn");
                  return false;
                }
              });
              $(document).ready(function () {
                $(".page_content").hide();
                $(".link_lienket").hide();
                $(".theloai_page").hide();
                $(".group_lienket").hide();
                $('#PageStyle').on('change', function () {
                  if (this.value == '1') {

                    $(".page_content textarea").val("");
                    $(".link_lienket input").val("");

                    $(".theloai_page").show();
                    $(".link_lienket").hide();
                    $(".page_content").hide();
                    $(".group_lienket").hide();

                  } else if (this.value == '2') {
                    $('#FormatPage option[value=0]').attr('selected', 'selected');
                    $('#GroupLink option[value=0]').attr('selected', 'selected');

                    $(".link_lienket input").val("");

                    $(".theloai_page").hide();
                    $(".link_lienket").hide();
                    $(".page_content").show();
                    $(".group_lienket").hide();
                  } else if (this.value == '3') {
                    $('#FormatPage option[value=0]').attr('selected', 'selected');
                    $('#GroupLink option[value=0]').attr('selected', 'selected');
                    $(".page_content textarea").html("");



                    $(".theloai_page").hide();
                    $(".link_lienket").show();
                    $(".page_content").hide();
                    $(".group_lienket").hide();
                  } else {
                    $('#FormatPage option[value=0]').attr('selected', 'selected');
                    $('#GroupLink option[value=0]').attr('selected', 'selected');
                    $(".page_content textarea").val("");
                    $(".link_lienket input").val("");


                    $(".page_content").hide();
                    $(".link_lienket").hide();
                    $(".theloai_page").hide();
                    $(".group_lienket").hide();
                  }
                });




                $('#FormatPage').on('change', function () {
                  $(".group_lienket").show();
                  if (this.value == 1) {
                    $('#GroupLink').html('');
                    $.ajax({
                      type: "GET",
                      url: "/shop/admin/menu/ajaxgetdatacategory",
                      success: function (data) {

                        $.each(data, function (i, item) {
                          $('#GroupLink').append("<option value='" + item.id + "'>" + item.name + "</option>");
                        });

                      },
                      error: function (response) {
                        alert(response.responseText);
                      }
                    });
                  } else if ((this.value == 2)) {
                    $('#GroupLink').html('');
                    $.ajax({
                      type: "GET",
                      url: "/shop/admin/menu/ajaxgetdatacatepost",
                      success: function (data) {

                        $.each(data, function (i, item)
                        {
                          $('#GroupLink').append("<option value='" + item.id + "'>" + item.name + "</option>");
                        });

                      },
                      error: function (response) {
                        alert(response.responseText);
                      }
                    });
                  }
                });
              });








              <c:choose>
                <c:when test="${url == 'update'}">

              $(document).ready(function () {
                window.onload = function () {
                  var kieutrang = $('#PageStyle').val();
                  if (${menu.pageStyle} == 1) {
                    $(".theloai_page").show();
                    $(".group_lienket").show();
                    $('#PageStyle option[value=1]').attr('selected', 'selected');
                  } else if (${menu.pageStyle} == 2) {
                    $(".page_content").show();
                    $('#PageStyle option[value=2]').attr('selected', 'selected');
                  } else if (${menu.pageStyle} == 3) {
                    $(".link_lienket").show();
                    $('#PageStyle option[value=3]').attr('selected', 'selected');
                  }




                  //format page
                  <c:choose>
                    <c:when test="${menu.groupLink > 0}">
                  var format_page = $("#FormatPage").val();


                  if (${menu.formatPage} == 1) {
                    $('#FormatPage option[value=1]').attr('selected', 'selected');

                    $('#GroupLink').html('');
                    $.ajax({
                      type: "GET",
                      url: "/shop/admin/menu/ajaxgetdatacategory",
                      success: function (data) {

                        $.each(data, function (i, item)
                        {
                          $('#GroupLink').append("<option value='" + item.id + "'>" + item.name + "</option>");
                          if (${menu.groupLink} == item.id) {
                            $('#GroupLink option[value="' + item.id + '"]').attr('selected', 'selected');
                          }
                        });

                      },
                      error: function (response) {
                        alert(response.responseText);
                      }
                    });
                  } else if (${menu.formatPage} == 2) {
                    $('#FormatPage option[value=2]').attr('selected', 'selected');

                    $('#GroupLink').html('');
                    $.ajax({
                      type: "GET",
                      url: "/shop/admin/menu/ajaxgetdatacatepost",
                      success: function (data) {

                        $.each(data, function (i, item)
                        {
                          $('#GroupLink').append("<option value='" + item.id + "'>" + item.name + "</option>");
                          if (${menu.groupLink} == item.id) {
                            $('#GroupLink option[value="' + item.id + '"]').attr('selected', 'selected');
                          }
                        });

                      },
                      error: function (response) {
                        alert(response.responseText);
                      }
                    });

                  }

                    </c:when>
                  </c:choose>


                }
              });
                </c:when>
              </c:choose>

            </script>
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