<%@page import="java.text.DecimalFormat"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


            <div class="curd" style="margin-right:70px;width:100%;">
              <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <div class="breadcrumb">
                  <div class="breadcrumb-left">
                    <i class="menu-icon fa fa-user" aria-hidden="true"></i>
                    <a href="/shop/admin/order/index" class="title_bread"> Tất cả đơn hàng</a>
                    <span style="color:#ccc;margin:0px 15px;font-size:20px;"> /</span>
                    <span class="title_bread"> #${m.orderId}</span>
                    <span style="color:#ccc;margin:0px 15px;font-size:20px;"> /</span>
                    <span class="title_bread"> <fmt:formatDate pattern = "dd-MM-yyyy HH:mm:ss" value = "${m.createdAt}" /></span>
                  </div>
                  <div class="breadcrumb-add">
                    <a class="btn btn-default" href="/shop/admin/order/index">Quay Lại</a>
                    <a href="" class="btn btn-sm btn-primary" id="button_prints">In đơn hàng</a>
                  </div>
                </div>
                <!-- /.breadcrumb -->

              </div>

              <div class="createandedit">

                <div class="row">


                  <c:if test="${not empty status_order}">
                    <div class="text-center alert  alert-success alert-sm">
                      ${status_order}
                    </div>
                  </c:if>
                  <c:if test="${not empty status_order_error}">
                    <div class="text-center alert  alert-danger alert-sm">
                      ${status_order_error}
                    </div>
                  </c:if>  
                  <div class="col-xs-12 col-md-8">
                    <div class="editcreate">

                      <div class="ctdhs">
                        Chi tiết đơn hàng
                      </div>
                      <div class="status_dh">
                        <svg class="svg-next-icon svg-next-icon-size-16 svg-next-icon-gray">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-order-unfulfilled-16">
                        <svg id="next-order-unfulfilled-16" width="100%" height="100%">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" enable-background="new 0 0 16 16">
                        <g>
                        <path d="M13.9130435,0 L2.08695652,0 C0.936347826,0 0,0.936347826 0,2.08695652 L0,14.2608696 C0,15.2194783 0.780521739,16 1.73913043,16 L14.2608696,16 C15.2194783,16 16,15.2194783 16,14.2608696 L16,2.08695652 C16,0.936347826 15.0636522,0 13.9130435,0 L13.9130435,0 Z M13.9130435,2.08695652 L13.9130435,10.4347826 L12.173913,10.4347826 C11.2153043,10.4347826 10.4347826,11.2153043 10.4347826,12.173913 L10.4347826,12.8695652 C10.4347826,13.0615652 10.2789565,13.2173913 10.0869565,13.2173913 L5.2173913,13.2173913 C5.0253913,13.2173913 4.86956522,13.0615652 4.86956522,12.8695652 L4.86956522,12.173913 C4.86956522,11.2153043 4.08904348,10.4347826 3.13043478,10.4347826 L2.08695652,10.4347826 L2.08695652,2.08695652 L13.9130435,2.08695652 L13.9130435,2.08695652 Z"></path>
                        </g>
                        </svg>
                        </svg>
                        </use>
                        </svg>

                        <span class="txt_status">
                          <c:choose>
                            <c:when test="${m.status == 1}">
                              Chưa hoàn thành
                            </c:when> 
                            <c:when test="${m.status == 2}">
                              Đã hủy
                            </c:when>  
                            <c:when test="${m.status == 3}">
                              Đã hoàn thành
                            </c:when>  
                          </c:choose>


                        </span>

                      </div>

                      <div class="detail_product">
                        <div class="text-center details_sps">Thông tin sản phẩm</div>
                        <table>

                          <tbody>
                            <c:forEach items="${listDetails}" var="c" varStatus="itr">
                              <tr class="bottom_order">
                                <td class="image_order"><img src="${pageContext.request.contextPath}/resources/images/${c.images}" alt="BÍ NGÔ"></td>

                                <td class="product_order_title"><a target="_blank" href="${pageContext.request.contextPath}/admin/product/edit?productId=${c.productId}">${c.productName}</a>
                                  <!--                                    <p style="color:#000;"> Màu sắc:8kg     / Khối lượng: Đen xám  </p>-->
                                </td>
                                <td class="product_price_order"><fmt:formatNumber type="number" pattern="###,###" value="${c.priceProduct}" /> <span class="xxx_quan">x</span> <span class="quanlity_order">${c.quanlity}</span></td>
                                <td class="total_price"><fmt:formatNumber type="number" pattern="###,###" value="${c.priceProduct *c.quanlity }" /> ₫</td>
                              </tr>
                            </c:forEach>

                            <tr>
                              <td class="total_money_price">Số tiền phải thanh toán: <span><fmt:formatNumber type="number" pattern="###,###" value="${m.totalPrice}" />  ₫</span></td>
                            </tr>

                          </tbody>
                        </table>
                        <c:choose>
                          <c:when test="${m.status != 2}">
                            <div class="xacthucorrder xacnhan_order">
                              <div class="pull-left left-pric">
                                <svg class="svg-next-icon svg-next-icon-size-20 svg-next-icon-gray">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-checkmark">
                                <svg id="next-checkmark" class="icon-symbol--loaded" width="100%" height="100%">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M7 18c-.265 0-.52-.105-.707-.293l-6-6c-.39-.39-.39-1.023 0-1.414s1.023-.39 1.414 0l5.236 5.236L18.24 2.35c.36-.42.992-.468 1.41-.11.42.36.47.99.11 1.41l-12 14c-.182.212-.444.338-.722.35H7z"></path>
                                </svg>
                                </svg>
                                </use>
                                </svg>
                                <span class="text-xacnhan">Xác nhận đơn hàng</span>
                              </div>

                              <div class="button-xacnhan">
                                <c:choose>
                                  <c:when test="${m.status == 3}">
                                    <a href="javascript::0" class="btn btn-primary btn-sm">
                                      ĐƠN HÀNG ĐÃ HOÀN TẤT QUÁ TRÌNH XÁC THỰC
                                    </a>
                                  </c:when> 
                                  <c:otherwise>
                                    <a href="${pageContext.request.contextPath}/admin/order/confirm-order?id=${m.orderId}" class="btn btn-primary btn-sm btn-xacthucdonhang">
                                      XÁC NHẬN ĐƠN HÀNG </a>      
                                    </c:otherwise>
                                  </c:choose>                         
                              </div>
                            </div>
                          </c:when> 
                        </c:choose>                            
                        <div class="xacthucorrder huy_order_dh">
                          <div class="pull-left left-pric">
                            <svg class="svg-next-icon svg-next-icon-size-20 svg-next-icon-gray">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-checkmark">
                            <svg id="next-checkmark" class="icon-symbol--loaded" width="100%" height="100%">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                            <path d="M7 18c-.265 0-.52-.105-.707-.293l-6-6c-.39-.39-.39-1.023 0-1.414s1.023-.39 1.414 0l5.236 5.236L18.24 2.35c.36-.42.992-.468 1.41-.11.42.36.47.99.11 1.41l-12 14c-.182.212-.444.338-.722.35H7z"></path>
                            </svg>
                            </svg>
                            </use>
                            </svg>
                            <span class="text-xacnhan">Hủy đơn hàng</span>
                          </div>

                          <div class="button-huy">
                            <c:choose>
                              <c:when test="${m.status == 2}">
                                <a href="javascript::0" class="btn btn-danger btn-sm">ĐƠN HÀNG NÀY ĐÃ HỦY</a>
                              </c:when> 
                              <c:otherwise>
                                <a href="${pageContext.request.contextPath}/admin/order/cancel-order?id=${m.orderId}" class="btn btn-warning btn-sm btn-huydonhang">HỦY ĐƠN HÀNG</a>  
                              </c:otherwise>
                            </c:choose> 
                          </div>

                        </div>


                      </div>

                    </div>
                  </div>


                  <div class="col-xs-12 col-md-4">
                    <div class="order_customer">
                      <div class="sumb">
                        <p class="text-kh pull-left">Khách hàng</p>
                        <img class="pull-right" src="https://dilac.com.vn/Content/Admin/assets/images/cus_order.png">
                      </div>
                      <p class="name_cus">${m.orderName}</p>

                      <div class="tt-order">
                        <p class="text_thss">Thông tin đơn hàng</p>
                        <p class="texts-order"><span style="color:#000;">Email: </span>${m.email}</p>
                      </div>

                      <div class="tt-order">
                        <p class="text_thss">ĐỊA CHỈ GIAO HÀNG</p>
                        <p class="texts-order"><span style="color:#000;">Địa chỉ: </span>${m.address}</p>
                        <p class="texts-order"><span style="color:#000;">Số điện thọai: </span>${m.phone}</p>
                      </div>

                      <div class="tt-order">
                        <p class="text_thss">Phương thức thanh toán</p>
                        <p class="texts-order"><span style="color:#000;"></span>
                          <c:choose>
                            <c:when test="${m.payment == 1}">
                              Thanh toán khi giao hàng (COD)
                            </c:when>
                            <c:when test="${m.payment == 2}">
                              Đặt trước (giữ hàng)
                            </c:when>
                          </c:choose>
                        </p>
                      </div>

                      <div class="tt-order">
                        <p class="text_thss">ngày đặt đơn hàng</p>
                        <p class="texts-order"><span style="color:#000;">Thời gian: </span><fmt:formatDate pattern = "dd-MM-yyyy HH:mm:ss" value = "${m.createdAt}" /></p>
                      </div>

                      <div class="tt-order">
                        <p class="text_thss">Trạng thái đơn hàng</p>
                        <span class="statys">
                          <c:choose>
                            <c:when test="${m.status == 1}">
                              Chưa hoàn thành
                            </c:when> 
                            <c:when test="${m.status == 2}">
                              Đã hủy
                            </c:when>  
                            <c:when test="${m.status == 3}">
                              Đã hoàn thành
                            </c:when>  
                          </c:choose>
                        </span>

                      </div>

                    </div>
                  </div>
                </div>
              </div>

              <div class="text-center">
                <a href="${pageContext.request.contextPath}/admin/order/delete?id=${m.orderId}" class="btn btn-lg btn-danger delete_orderss btn_confirm">Xóa Đơn Hàng</a>
              </div>

            </div>




            <style>
              #printorders{
                display:none;
              }
            </style>




            <div style="margin:0;font-family: Helvetica;font-size:12px;page-break-after:always;" id="printorders">

              <div style="text-align:center;">
                <img src="${configs.logo}" alt="logo" />
              </div>
              <div>
                <div style="float: right; text-align: right; padding-right:20px;">
                  <p>Ngày đặt hàng: <fmt:formatDate pattern = "dd-MM-yyyy HH:mm:ss" value = "${m.createdAt}" /></p>

                </div>

                <div style="margin: 10px 0 1.5em 0;">

                  <p><strong style="font-size: 18px;">${configs.nameCompany}</strong></p>

                  <p><strong>Địa chỉ:</strong> ${configs.address}</p>

                  <p><strong>Điện thoại:</strong>${configs.hotline}</p>

                  <p><strong>Website:</strong>${configs.nameCompany}</p>
                  <p><strong>Email:</strong> ${configs.email}</p>
                  
                </div>
                <div style="clear:both"></div>
              </div>
              <div>
                <div style="width:60%;float:left;">
                  <h3 style="font-size: 14px;line-height: 0">Chi tiết đơn hàng</h3>
                  <hr style="border: none; border-top: 2px solid #0975BD;" />
                  <table style="margin: 0 0 1.5em 0;font-size: 12px;width:100%;">
                    <thead>
                      <tr>
                        <th style="width:10%;text-align: center;padding: 5px 0px">STT</th>
                        <th style="width:30%;text-align: left;padding: 5px 0px">Tên Sản phẩm</th>
                        <th style="width:15%;text-align: right;padding: 5px 0px">Số lượng</th>
                        <th style="width:20%;text-align: right;padding: 5px 0px">Giá</th>
                        <th style="width:25%;text-align: right;padding: 5px 0px">Thành tiền</th>
                      </tr>
                    </thead>
                    <tbody>
                      
                      <c:forEach items="${listDetails}" var="c" varStatus="itr">
                      <tr valign="top" style="border-top: 1px solid #d9d9d9;">
                        <td align="center" style="padding: 5px 0px">1</td>
                        <td align="left" style="padding: 5px 5px 5px 0px;white-space: normal;">
                          <p style="margin-bottom: 5px;">${c.productName}</p>
                        </td>
                        <td align="center" style="padding: 5px 0px">${c.quanlity}</td>
                        <td align="right" style="padding: 5px 0px"><fmt:formatNumber type="number" pattern="###,###" value="${c.priceProduct}" /> ₫</td>
                        <td align="right" style="padding: 5px 0px"><fmt:formatNumber type="number" pattern="###,###" value="${c.priceProduct *c.quanlity }" /> ₫</td>
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                  <h3 style="font-size: 14px;margin: 0 0 1em 0;">Thông tin thanh toán</h3>
                  <table style="font-size: 12px;width: 100%; margin: 0 0 1.5em 0;">
                    <tr>
                      <td style="padding: 5px 0px">Tổng giá sản phẩm:</td>
                      <td style="text-align:right"><fmt:formatNumber type="number" pattern="###,###" value="${m.totalPrice}" /> ₫</td>
                    </tr>

                    <tr>
                      <td style="padding: 5px 0px"><strong>Tổng tiền:</strong></td>
                      <td style="text-align:right;padding: 5px 0px"><strong><fmt:formatNumber type="number" pattern="###,###" value="${m.totalPrice}" /> ₫</strong></td>
                    </tr>
                  </table>
                </div>
                <div style="width:40%;padding: 0px 0 0 20px;float:left;">
                  <h3 style="font-size: 14px;line-height: 0">Thông tin đơn hàng</h3>
                  <hr style="border: none; border-top: 2px solid #0975BD;" />
                  <div style="margin: 0 0 1em 0; padding: 1em; border: 1px solid #d9d9d9;">
                    <p><strong>Mã đơn hàng:</strong></p>
                    <p>#${m.orderId}</p>
                    <p><strong>Ngày đặt hàng:</strong></p>
                    <p><fmt:formatDate pattern = "dd-MM-yyyy HH:mm:ss" value = "${m.createdAt}" /></p>
                    <p><strong>Phương thức thanh toán</strong></p>
                    <p>
                      <c:choose>
                            <c:when test="${m.payment == 1}">
                              Thanh toán khi giao hàng (COD)
                            </c:when>
                            <c:when test="${m.payment == 2}">
                              Đặt trước (giữ hàng)
                            </c:when>
                          </c:choose></p>
                  </div>

                  <h3 style="font-size: 14px;line-height: 0">Thông tin mua hàng</h3>
                  <hr style="border: none; border-top: 2px solid #0975BD;" />
                  <div style="margin: 0 0 1em 0; padding: 1em; border: 1px solid #d9d9d9;  white-space: normal;">
                    <p>Họ tên: <strong>${m.orderName}</strong></p>
                    <p>Địa chỉ: <strong>${m.address}</strong></p>

                    <p>Điện thoại: ${m.phone}</p>

                    <p>Email: ${m.email}</p>
                  </div>

                </div>
                <div style="clear:both"></div>
              </div>
              <p>Nếu bạn có thắc mắc, vui lòng liên hệ chúng tôi qua email <u> ${configs.email} </u> hoặc liên hệ : ${configs.hotline} .</p>
            </div>






            <script>
              $('#button_prints').click(function () {
                var printContents = document.getElementById("printorders").innerHTML;
                var originalContents = document.body.innerHTML;

                document.body.innerHTML = printContents;

                window.print();

                document.body.innerHTML = originalContents;
              });
            </script>



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
