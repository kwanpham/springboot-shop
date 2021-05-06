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
            <!--hiển thị nội dung ở đây-->


            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
              <div class="breadcrumb">
                <div class="breadcrumb-left">
                  <i class="menu-icon fa fa-tags" aria-hidden="true"></i>
                  <span class="title_bread"> Danh sách đơn hàng</span>
                </div>
       
              </div>
              <!-- /.breadcrumb -->

            </div>
            <div class="internew-content">
              <div class="title_cat">
                <h3>Tất cả đơn hàng</h3>
                <h3 style="color: red">${status}</h3>
              </div>

              <div class="content-layout">
                <div class="pull-left">
                  <p class="count">Tổng số đơn hàng: <span>${count }</span></p>
                </div>
                <div class="pull-right">
                  <div class="border_search">
<!--                    <form action="admin/order/search" method="get"> <span class="next-input-add-on next-input__add-on--before">
                        <svg class="svg-next-icon svg-next-icon-size-20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-search-reverse">
                        <svg id="next-search-reverse" class="icon-symbol--loaded" width="100%" height="100%"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M8 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm9.707 4.293l-4.82-4.82C13.585 10.493 14 9.296 14 8c0-3.313-2.687-6-6-6S2 4.687 2 8s2.687 6 6 6c1.296 0 2.492-.415 3.473-1.113l4.82 4.82c.195.195.45.293.707.293s.512-.098.707-.293c.39-.39.39-1.023 0-1.414z"></path></svg></svg>
                        </use>
                        </svg>
                      </span>
                      <input type="text" value="" placeholder="Nhập từ khóa..." name="q">
                      <input type="submit" class="hidden">
                    </form>-->
                  </div>
                </div>
              </div>

              <table class="table">
                <tbody>
                  <tr>
                    <th>
                      Mã Đơn
                    </th>
                    <th>
                      Ngày đặt
                    </th>
                    <th>
                      Khách Hàng
                    </th>
                    <th>
                      Trạng thái
                    </th>
                    <th>
                      Phương thức thanh toán
                    </th>
                    <th>
                      Tổng tiền
                    </th>

                    <th>Xem Chi Tiết</th>

                  </tr>

                  <c:forEach items="${listOrder}" var="c" varStatus="itr">
                    <tr class="text-center" style="font-weight:bold;    ">
                      <td class="detail_idorder">
                        <a href="view?id=${c.orderId}">#${c.orderId}</a>
                      </td>
                      <td>
                          <fmt:formatDate pattern = "dd-MM-yyyy HH:mm:ss" value = "${c.createdAt}" />
                      </td>
                      <td>
                        <a href="view?id=${c.orderId}"> ${c.orderName}</a>
                      </td>
                      <td>
                      <c:choose>
                           <c:when test="${c.status == 1}">
                                <p class="btn btn-warning btn-xs text-center">Chờ xử lý</p>
                           </c:when> 
                            <c:when test="${c.status == 2}">
                              <p class="btn btn-danger btn-xs text-center">Đã hủy</p>
                           </c:when>  
                            <c:when test="${c.status == 3}">
                              <p class="btn btn-default btn-xs text-center">Đã xác nhận</p>
                           </c:when>  
                       </c:choose>
                      </td>
                      <td>
                          <c:choose>
                            <c:when test="${c.payment == 1}">
                              Thanh toán khi giao hàng (COD)
                            </c:when>
                            <c:when test="${c.payment == 2}">
                              Đặt trước (giữ hàng)
                            </c:when>
                          </c:choose>
                      </td>
                      <td style="color:red;font-weight:bold;font-size:16px;">
                        <fmt:formatNumber type="number" pattern="###,###" value="${c.totalPrice}" /> ₫
                      </td>

                      <td>
                        <a class=" btn btn-xs btn-primary" href="view?id=${c.orderId}">Xem Chi Tiết</a>
                      </td>

                    </tr>
                  </c:forEach>

                </tbody>
              </table>
                <div class="pagination text-center">
                <mytag:PaginationTaglib max="10" offset="${offset}" count="${count}" uri="${pageContext.request.contextPath}/admin/order/index" next="&raquo;" previous="&laquo;"/>
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