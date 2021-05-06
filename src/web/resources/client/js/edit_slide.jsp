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
                                <f:form action="${url}" modelAttribute="slide" method="post">
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
                                                        <f:input class="form-control" path="name" id="name" name="name" type="text"/>
                                                    </div>
                                                </div>
                                                <div class="des-product-info-images" id="files1">
                                                    <div class="row">
                                                        <div class="col-xs-12">
                                                            <div class="tepi">
                                                              <div class="pull-left">
                                                                <p style="font-weight:bold;">Hình ảnh</p>
                                                              </div>
                                                              <div class="pull-right">
                                                                <a href="javascript:0" onclick="performClick('uploadFile');" style="margin-right: 10px;">Chọn hình</a>
                                                              </div>
                                                            </div>
                                                            <div class="jiuos" onclick="performClick('uploadFile');">
                                                              <svg class="next-icon-product next-icon-product-80 next-upload-product-dropzone__icon" value="Chọn hình">
                                                              <svg id="next-photos-80" class="icon-symbol--loaded" width="100%" height="100%">
                                                              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 80">
                                                              <path d="M80 57.6l-4-18.7v-23.9c0-1.1-.9-2-2-2h-3.5l-1.1-5.4c-.3-1.1-1.4-1.8-2.4-1.6l-32.6 7h-27.4c-1.1 0-2 .9-2 2v4.3l-3.4.7c-1.1.2-1.8 1.3-1.5 2.4l5 23.4v20.2c0 1.1.9 2 2 2h2.7l.9 4.4c.2.9 1 1.6 2 1.6h.4l27.9-6h33c1.1 0 2-.9 2-2v-5.5l2.4-.5c1.1-.2 1.8-1.3 1.6-2.4zm-75-21.5l-3-14.1 3-.6v14.7zm62.4-28.1l1.1 5h-24.5l23.4-5zm-54.8 64l-.8-4h19.6l-18.8 4zm37.7-6h-43.3v-51h67v51h-23.7zm25.7-7.5v-9.9l2 9.4-2 .5zm-52-21.5c-2.8 0-5-2.2-5-5s2.2-5 5-5 5 2.2 5 5-2.2 5-5 5zm0-8c-1.7 0-3 1.3-3 3s1.3 3 3 3 3-1.3 3-3-1.3-3-3-3zm-13-10v43h59v-43h-59zm57 2v24.1l-12.8-12.8c-3-3-7.9-3-11 0l-13.3 13.2-.1-.1c-1.1-1.1-2.5-1.7-4.1-1.7-1.5 0-3 .6-4.1 1.7l-9.6 9.8v-34.2h55zm-55 39v-2l11.1-11.2c1.4-1.4 3.9-1.4 5.3 0l9.7 9.7c-5.2 1.3-9 2.4-9.4 2.5l-3.7 1h-13zm55 0h-34.2c7.1-2 23.2-5.9 33-5.9l1.2-.1v6zm-1.3-7.9c-7.2 0-17.4 2-25.3 3.9l-9.1-9.1 13.3-13.3c2.2-2.2 5.9-2.2 8.1 0l14.3 14.3v4.1l-1.3.1z"></path>
                                                              </svg>
                                                              </svg>
                                                              </svg>
                                                              <p style="color:#c3cfd8;text-align:center;">Sử dụng nút <strong>Chọn hình</strong> để thêm hình.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-md-4">
                                                <div class="visible-status">
                                                    <p class="title_st">Hiển thị</p>
                                                    <div class="check-st">
                                                        <div class="show-st">
                                                            <input type="radio" path="status" name="status" value="1" <c:if test="${slide.status == true}">checked</c:if>> <span class="hideshow">Hiện</span>
                                                        </div>
                                                        <div class="show-st">
                                                            <input type="radio" name="status" value="0" <c:if test="${slide.status == false}">checked</c:if>> <span class="hideshow">Ẩn</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="des-product-info-images" id="files1">
                                                    <div class="row">
                                                        <div class="col-xs-12">
                                                            <div class="tepi">
                                                                <div class="pull-left">
                                                                    <p style="font-weight:bold;">Hình ảnh</p>
                                                                </div>
                                                            </div>

                                                            <input type="file" name="image_file[]" class="hidden" multiple="" id="uploadFile" onchange="loadFile(event);">

                                                            <div class="jiuos">
                                                                <img src="<c:url value="${slide.image}"/>" style="width: 130px;"/>
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


