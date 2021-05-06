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
              <f:form action="${pageContext.request.contextPath}/admin/config/update" modelAttribute="configs" method="post">
                <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                  <div class="breadcrumb">
                    <div class="breadcrumb-left">
                      <i class="menu-icon fa fa-user" aria-hidden="true"></i>
                      <a href="/shop/admin/config-home" class="title_bread"> Quản lí cấu hình</a>
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
                  <f:input type="hidden" path="cfid" />
                  <div class="row">
                    <div class="editcreate">


                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Thông tin - mô tả website
                        </div>

                        <div class="form-group">
                          <label class="control-label" for="nameCompany">Tên công ty,doanh nghiệp</label>
                          <div>
                            <f:input class="form-control" path="nameCompany" name="nameCompany" type="text" />
                          </div>
                        </div> 
                        <div class="form-group">
                          <label class="control-label" for="email">Email</label>
                          <div>
                            <f:input class="form-control" path="email" name="email" type="text" />
                          </div>
                        </div> 

                        <div class="form-group">
                          <label class="control-label" for="website">Website</label>
                          <div>
                            <f:input class="form-control" path="website" name="website" type="text" />
                          </div>
                        </div> 


                        <div class="form-group">
                          <label class="control-label" for="website">Hotline</label>
                          <div>
                            <f:input class="form-control" path="hotline" name="hotline" type="text" />
                          </div>
                        </div> 

                        <div class="form-group">
                          <label class="control-label" for="website">Hotline 2</label>
                          <div>
                            <f:input class="form-control" path="hotline2" name="hotline2" type="text" />
                          </div>
                        </div>     


                        <div class="form-group">
                          <label class="control-label" for="website">Địa chỉ</label>
                          <div>
                            <f:input class="form-control" path="address" name="address" type="text" />
                          </div>
                        </div>  


                      </div>



                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Cấu hình Footer 1
                        </div>

                        <div class="form-group">
                          <label class="control-label" for="titleMenuFooter1">Tiêu đề Footer 1</label>
                          <div>
                            <f:input class="form-control" path="titleMenuFooter1" name="titleMenuFooter1" type="text" />
                          </div>
                        </div> 

                        <div class="form-group">
                          <label class="control-label" for="menuFooter1">Nội dung footer 1</label>
                          <div>
                            <f:textarea cols="10" id="txt_content" path="menuFooter1" ></f:textarea>
                            </div>
                          </div> 
                        </div>


                        <div class="panel panel-default" style="overflow:hidden;">
                          <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                            <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Cấu hình Footer 2
                          </div>

                          <div class="form-group">
                            <label class="control-label" for="titleMenuFooter2">Tiêu đề Footer 2</label>
                            <div>
                            <f:input class="form-control" path="titleMenuFooter2" name="titleMenuFooter2" type="text" />
                          </div>
                        </div> 

                        <div class="form-group">
                          <label class="control-label" for="menuFooter2">Nội dung footer 2</label>
                          <div>
                            <f:textarea cols="10" id="txt_content2" path="menuFooter2" ></f:textarea>
                            </div>
                          </div> 
                        </div>


                        <div class="panel panel-default" style="overflow:hidden;">
                          <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                            <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Cấu hình Footer 3
                          </div>

                          <div class="form-group">
                            <label class="control-label" for="titleMenuFooter2">Tiêu đề Footer 3</label>
                            <div>
                            <f:input class="form-control" path="titleMenuFooter3" name="titleMenuFooter3" type="text" />
                          </div>
                        </div> 

                        <div class="form-group">
                          <label class="control-label" for="menuFooter3">Nội dung footer 3</label>
                          <div>
                            <f:textarea cols="10" id="txt_content3" path="menuFooter3" ></f:textarea>
                            </div>
                          </div> 
                        </div>

                        <div class="panel panel-default" style="overflow:hidden;">
                          <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                            <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Cấu hình Footer 4
                          </div>

                          <div class="form-group">
                            <label class="control-label" for="titleMenuFooter4">Tiêu đề Footer 4</label>
                            <div>
                            <f:input class="form-control" path="titleMenuFooter4" name="titleMenuFooter4" type="text" />
                          </div>
                        </div> 

                        <div class="form-group">
                          <label class="control-label" for="menuFooter4">Link fanpage Facebook</label>
                          <div>
                            <f:input class="form-control" path="menuFooter4" name="menuFooter4" type="text" />
                          </div>
                        </div> 
                      </div>


                      <div class="panel panel-default" style="overflow:hidden;">
                        <div class="panel-heading" style="background: #383838;color:#fff;margin-bottom:20px;">
                          <span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Mô tả thông tin thêm Footer
                        </div>

                        <div class="form-group">
                          <label class="control-label" for="desContentFooter">Nội dung</label>
                          <div>
                            <f:textarea cols="10" id="txt_content4" path="desContentFooter" ></f:textarea>
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

  <script>
    var ckeditor = CKEDITOR.replace('txt_content2',
            {
              language: 'vi'
            });
    CKFinder.setupCKEditor(ckeditor, '${pageContext.request.contextPath}/resources/admin/ckfinder');

    var ckeditor = CKEDITOR.replace('txt_content3',
            {
              language: 'vi'
            });
    CKFinder.setupCKEditor(ckeditor, '${pageContext.request.contextPath}/resources/admin/ckfinder');

    var ckeditor = CKEDITOR.replace('txt_content4',
            {
              language: 'vi'
            });
    CKFinder.setupCKEditor(ckeditor, '${pageContext.request.contextPath}/resources/admin/ckfinder');
  </script>


  <script>
    $('.click_logo').click(function () {
      CKFinder.popup({
        chooseFiles: true,
        width: 1100,
        height: 600,
        onInit: function (finder) {
          finder.on('files:choose', function (evt) {
            var file = evt.data.files.first();
            var output = document.getElementById('image_showed');
            output.value = file.getUrl();
            $('#hidLogoID').val(file.getUrl());
            $('#showImage img').attr('src', file.getUrl());
          });
          finder.on('file:choose:resizedImage', function (evt) {
            var output = document.getElementById('image_showed');
            output.value = evt.data.resizedUrl;
          });

        }
      });
    });
    $('#dels').click(function () {
      $('#hidLogoID').val("");
      $('#image_showed').removeAttr("src");
    });

  </script>
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