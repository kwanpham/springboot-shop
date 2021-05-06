<%-- 
    Document   : giohang
    Created on : Oct 18, 2017, 9:29:29 PM
    Author     : LAPNV
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="vi">
  <jsp:include page="template/header.jsp" />
  <style>
    .table-condensed thead {
      border-top: 1px solid #eae8e8;
    }
    table.table.table-condensed td {
      border: 1px solid #eae8e8;
      text-align: center;
    }
    table.table.table-condensed input {
      width: 60px !important;
    }
    span.input-group-btn {
      float: left;
      bottom: 1px;
    }
    .table-condensed thead td {
      font-weight: 600;
      text-align: center;
    }
    #page #content {
      padding: 30px 0;
    }
    #content h1 {
      margin: 20px 0;
    }
  </style>
  <body id="offcanvas-container" class="offcanvas-container common-home page-common-home layout-fullwidth">
    <jsp:include page="template/menu_top.jsp"/>
    <section class="row-offcanvas row-offcanvas-left offcanvas-pusher">
      <div id="page">
        <div class="container">
          <div class="row">
            <section id="sidebar-main" class="col-sm-12">


              <div id="content">
                <h1>Giỏ hàng của bạn</h1>       
                <c:choose>
                  <c:when test="${ not empty count_cart}">
                    <c:choose>
                      <c:when test="${count_cart > 0}">
                        <form action="<%=request.getContextPath()%>/update.htm" enctype="multipart/form-data">
                          <div class="table-responsive">
                            <table class="table table-condensed">
                              <thead>
                                <tr>
                                  <td class="text-center col">Ảnh</td>
                                  <td class="text-left col">SẢN PHẨM</td>
                                  <td class="text-left col">MÃ SẢN PHẨM</td>
                                  <td class="text-left col">SỐ LƯỢNG</td>
                                  <td class="text-right">ĐƠN GIÁ</td>
                                  <td class="text-right">TỔNG</td>
                                  <td class="text-right" width="10%">TÙY CHỌN</td>
                                </tr>
                              </thead>
                              <tbody>
                                <%--<c:forEach items="${listCart}" var="cart">--%>
                                <c:forEach items="<%=request.getSession().getAttribute("listCart")%>" var="cart">
                                  <tr>
                                    <td class="text-center" style="width: 20%;">
                                      <a href="${pageContext.request.contextPath}/product/${cart.products.id}">
                                        <img src="${pageContext.request.contextPath}/resources/images/${cart.products.image}" alt="${cart.products.name}" title="${cart.products.name}" class="img-thumbnail" style="width:100px;height: 100px; " />
                                      </a>
                                    </td>
                                    <td class="text-left">
                                      <a href="${pageContext.request.contextPath}/product/${cart.products.id}"">${cart.products.name}</a>
                                    </td>
                                    <td class="text-left">${cart.products.code}</td>
                                    <td class="text-left" style="width: 20%;">
                                      <div>
                                        <input type="number" min="1" max="200" name="quantity" id="quantity" maxlength="12" value="${cart.quantity}" size="1" class="form-control" style="width: 55% !important;float: left;" />
                                          <button type="submit" title="Cập nhật" class="btn btn-primary">
                                            Cập nhật
                                          </button>
                                      </div>
                                    </td>
                                    <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${cart.products.price}</fmt:formatNumber> VNĐ</td>
                                    <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${cart.products.price*cart.quantity}</fmt:formatNumber></td>
                                      <td>
                                        <a href="<%=request.getContextPath()%>/remove?Id=${cart.products.id}" data-toggle="tooltip" data-placement="top" title="Gỡ bở" class="btn btn-danger" style="margin-top:1px" onclick="return confirm('Bạn có muốn xóa không?')">
                                        XÓA
                                      </a>
                                    </td>
                                  </tr>
                                </c:forEach>
                              </tbody>
                            </table>
                          </div>
                        </form>
                        <div class="row">
                          <div class="col-sm-4 col-sm-offset-8">
                            <table class="table table-bordered">
                              <tr>
                                <td class="text-right"><strong>Thành tiền:</strong></td>
                                <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${total}</fmt:formatNumber> VNĐ</td>
                                </tr>
                                <tr>
                                  <td class="text-right"><strong>Tổng số:</strong></td>
                                  <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${total}</fmt:formatNumber> VNĐ</td>
                                </tr>
                              </table>

                            </div>
                            <div class="text-center">
                              <a href="<%=request.getContextPath()%>" class="btn btn-primary">TIẾP TỤC MUA HÀNG</a>
                            <a href="<%=request.getContextPath()%>/checkouts" class="btn btn-success">THANH TOÁN ĐƠN HÀNG</a>
                          </div>
                        </div>

                      </c:when>  
                      <c:otherwise>
                        <div class="text-center" style="font-size:16px;">Giỏ hàng của bạn đang trống</div>
                        <div class="text-center" style="margin-top:20px;">
                          <a href="<%=request.getContextPath()%>" class="btn btn-primary">Tiếp tục mua hàng</a>
                        </div>
                      </c:otherwise>
                    </c:choose>

                  </c:when>
                  <c:otherwise>
                    <div class="text-center" style="font-size:16px;">Giỏ hàng của bạn đang trống</div>
                    <div class="text-center" style="margin-top:20px;">
                      <a href="<%=request.getContextPath()%>" class="btn btn-primary">Tiếp tục mua hàng</a>
                    </div>

                  </c:otherwise>
                </c:choose>               




              </div>



              <div id="fb-root"></div>
            </section>
          </div>
        </div>
      </div>
    </section>
    <div id="footer">
      <jsp:include page="template/footer.jsp"/>
    </div>
  </body>
</html>
