<%@page import="java.text.DecimalFormat"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mytag" uri="/WEB-INF/tlds/MyCustomTag" %>
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

            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
              <div class="breadcrumb">
                <div class="breadcrumb-left">
                  <i class="menu-icon fa fa-bars" aria-hidden="true"></i>
                  <span class="title_bread"> Danh sách Menu </span>
                </div>
                <div class="breadcrumb-add">
                  <a href="${pageContext.request.contextPath}/admin/menu/add">Thêm Mới Menu</a>
                </div>
              </div><!-- /.breadcrumb -->


            </div>

            <div class="internew-content">
              <div class="title_cat">
                <h3>Danh Sách Tất Cả Menu</h3>
              </div>



                  <c:if test="${not empty status}" >
                  <div class="alert alert-info text-center">
                    <strong>Thành công!</strong> Đã cập nhật dữ liệu hoàn tất
                  </div>
                    </c:if>
                  <c:if test="${not empty statusadd}" >
                    <div class="alert alert-success text-center">
                      <strong>Thành công!</strong> Đã thêm mới dữ liệu hoàn tất
                    </div>
                  </c:if>
                  <c:if test="${not empty status_delete}" >
                    <div class="alert alert-danger text-center">
                      <strong>Thành công!</strong> Đã xóa dữ liệu hoàn tất
                    </div>
                  </c:if>
              
              <div class="content-layout">
                <div class="pull-left">
                  <p class="count">Tổng số menu: <span>${count}</span> | Tổng số trang:  <span>1</span></p>
                </div>
                <div class="pull-right">
                  <div class="border_search">
                    <form action="/Admin/MenuNavigations" method="get">
                      <span class="next-input-add-on next-input__add-on--before">
                        <svg class="svg-next-icon svg-next-icon-size-20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-search-reverse">
                        <svg id="next-search-reverse" class="icon-symbol--loaded" width="100%" height="100%"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M8 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm9.707 4.293l-4.82-4.82C13.585 10.493 14 9.296 14 8c0-3.313-2.687-6-6-6S2 4.687 2 8s2.687 6 6 6c1.296 0 2.492-.415 3.473-1.113l4.82 4.82c.195.195.45.293.707.293s.512-.098.707-.293c.39-.39.39-1.023 0-1.414z"></path></svg></svg>
                        </use>
                        </svg>
                      </span><input type="text" placeholder="Nhập từ khóa..." name="q">
                      <input type="submit" class="hidden">
                    </form>            
                  </div>
                </div>
              </div>

              <table class="table">
                <tbody><tr>
                    <th width="110px;">
                      Thứ tự sắp xếp
                    </th>
                    <th>
                      Tên Menu
                    </th>
                    <th>
                      Danh Mục Cha
                    </th>
                    <th>
                      Kiểu trang
                    </th>
                    <th>
                      Ngày tạo
                    </th>
                    <th>
                      Trạng thái
                    </th>
                    <th>Tùy chỉnh</th>
                  </tr>
                  <c:forEach items="${listMenu}" var="c" varStatus="itr">
                    <tr class="text-center">
                      <td>
                        ${c.sequence}
                      </td>
                      <td>
                        ${c.menuName}
                      </td>
                      <td>
                        <span>${c.parents}</span>

                      </td>
                      <td>
                        <span>
                        <c:choose>
                           <c:when test="${c.pageStyle == 1}">
                              <span>Trang Liên Kết</span>
                           </c:when> 
                            <c:when test="${c.pageStyle == 2}">
                              <span>Trang Nội Dung</span>
                           </c:when>  
                            <c:when test="${c.pageStyle == 3}">
                              <span>Liên Kết URL</span>
                           </c:when>  
                        </c:choose>
                        </span>
                      </td>


                      <td>
                        <fmt:formatDate pattern = "dd-MM-yyyy HH:mm:ss" value = "${c.createdAt}" />
                      </td>
                      <td>
                        <c:choose>
                           <c:when test="${c.status == false}">
                              <p class="btn btn-danger btn-xs text-center">Disable</p>
                            </c:when> 
                            <c:otherwise>
                              <p class="btn btn-success btn-xs text-center">Active</p>
                            </c:otherwise>  
                        </c:choose>
                      </td>
                      <td>
                        <a class="view_sua btn btn-xs btn-success" href="${pageContext.request.contextPath}/admin/menu/edit?id=${c.menuId}">Sửa</a>
                        <a class="btn_confirm btn btn-xs btn-danger" href="${pageContext.request.contextPath}/admin/menu/delete?id=${c.menuId}">Xóa</a>
                      </td>
                    </tr>
                  </c:forEach>

                </tbody></table>

              <div class="pagination">
                  <mytag:PaginationTaglib max="10" offset="${offset}" count="${count}" uri="${pageContext.request.contextPath}/admin/mehu/index" next="&raquo;" previous="&laquo;"/>
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

<a 