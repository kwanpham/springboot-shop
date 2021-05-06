<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<c:choose>
  <c:when test="${ not empty count_cart}">
    <c:choose>
      <c:when test="${count_cart > 0}">
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" class="flexbox">

          <head>
            <link rel="shortcut icon" href="//theme.hstatic.net/1000197181/1000253506/14/favicon.png?v=1662" type="image/png" />
            <title>
              Thanh toán đơn hàng
            </title>
            <link href='${pageContext.request.contextPath}/resources/client/css/checkouts.css' rel='stylesheet' type='text/css' />
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2, user-scalable=no">
          </head>

          <body>
            <div class="banner">
              <div class="wrap">
                <a href="/" class="logo">
                  <h1 class="logo-text">SAM Shop</h1>
                </a>
              </div>
            </div>

            <div class="content">
              <div class="wrap">
                <div class="sidebar">
                  <div class="sidebar-content">
                    <div class="order-summary order-summary-is-collapsed">
                      <h2 class="details-order">Thông tin đơn hàng (${count_cart} sản phẩm) </h2>
                      <div class="order-summary-sections">
                        <div class="order-summary-section order-summary-section-product-list" data-order-summary-section="line-items">
                          <table class="product-table">

                            <tbody>
                              <c:forEach items="<%=request.getSession().getAttribute("listCart")%>" var="cart">
                                <tr class="product">
                                  <td class="product-image">
                                    <div class="product-thumbnail">
                                      <div class="product-thumbnail-wrapper">
                                        <img class="product-thumbnail-image" alt="${cart.products.name}" src="${pageContext.request.contextPath}/resources/images/${cart.products.image}" />
                                      </div>
                                      <span class="product-thumbnail-quantity" aria-hidden="true">${cart.quantity}</span>
                                    </div>
                                  </td>
                                  <td class="product-description">
                                    <span class="product-description-name order-summary-emphasis">${cart.products.name}</span>
                                  </td>
                                  <td class="product-quantity visually-hidden">${cart.quantity}</td>
                                  <td class="product-price">
                                    <span class="order-summary-emphasis"><fmt:formatNumber maxFractionDigits="3">${cart.products.price*cart.quantity}</fmt:formatNumber> đ</span>
                                    </td>
                                  </tr>
                              </c:forEach>
                            </tbody>

                          </table>
                        </div>

                        <div class="order-summary-section order-summary-section-total-lines">
                          <table class="total-line-table">

                            <tfoot class="total-line-table-footer">
                              <tr class="total-line">
                                <td class="total-line-name payment-due-label">
                                  <span class="payment-due-label-total">Tổng cộng</span>
                                </td>
                                <td class="total-line-name payment-due">
                                  <span class="payment-due-price" data-totalmoney="<fmt:formatNumber maxFractionDigits="3">${total}</fmt:formatNumber>">
                                      <fmt:formatNumber maxFractionDigits="3">${total}</fmt:formatNumber> đ
                                    </span>
                                  </td>
                                </tr>
                              </tfoot>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="main">
                    <div class="main-header">
                      <a href="/" class="logo">
                        <h1 class="logo-text">SAM Shop</h1>
                      </a>
                      <ul class="breadcrumb">
                        <li class="breadcrumb-item">
                          <a href="/cart">Giỏ hàng</a>
                        </li>
                        <li class="breadcrumb-item breadcrumb-item-current">
                          Thông tin đặt hàng
                        </li>
                      </ul>
                    </div>

                    <form action="/shop/send-order" method="POST" enctype="multipart/form-data">
                      <div class="main-content">
                        <div class="step">
                          <div class="step-sections " step="1">
                            <div class="section">
                              <div class="section-header">
                                <h2 class="section-title">Thông tin giao hàng</h2>
                              </div>
                              <div class="section-content section-customer-information no-mb">

                                <div class="fieldset">
                                  <div class="field   ">
                                    <div class="field-input-wrapper">
                                      <label class="field-label">Họ và tên</label>
                                      <input placeholder="Họ và tên" autocapitalize="off"  required class="field-input" size="30" type="text" id="orderName" name="orderName" path="orderName"  />
                                    </div>
                                  </div>
                                  <div class="field  field-two-thirds  ">
                                    <div class="field-input-wrapper">
                                      <label class="field-label" for="checkout_user_email">Email</label>
                                      <input placeholder="Email" autocapitalize="off" class="field-input" size="30" type="email" id="email" name="email" path="email" />
                                    </div>
                                  </div>
                                  <div class="field field-required field-third  ">
                                    <div class="field-input-wrapper">
                                      <label class="field-label" for="billing_address_phone">Số điện thoại</label>
                                      <input placeholder="Số điện thoại" required autocapitalize="off" class="field-input" size="30" maxlength="11" type="text" path="phone"  id="Phone" name="phone"  />
                                    </div>
                                  </div>
                                  <div class="field   ">
                                    <div class="field-input-wrapper">
                                      <label class="field-label" for="billing_address_address1">Địa chỉ</label>
                                      <input placeholder="Địa chỉ" required autocapitalize="off" class="field-input" size="30" type="text" id="address" name="address" path="address" />
                                    </div>
                                  </div>
                                  <input type="hidden" name="totalPrice" path="totalPrice" value="${total}" />
                                  <input type="hidden" name="status" path="status" value="1" />
                                  <input type="hidden" name="viewStatus" path="viewStatus" value="0" />
                                </div>
                              </div>

                              <div id="change_pick_location_or_shipping">

                                <div id="section-payment-method" class="section">
                                  <div class="section-header">
                                    <h2 class="section-title">Phương thức thanh toán</h2>
                                  </div>
                                  <div class="section-content">
                                    <div class="content-box">

                                      <div class="radio-wrapper content-box-row">
                                        <label class="radio-label" >
                                          <div class="radio-input">
                                            <input class="input-radio" checked name="payment" path="payment" type="radio" value="1">
                                          </div>
                                          <span class="radio-label-primary">Thanh toán khi giao hàng (COD)</span>
                                        </label>
                                      </div>
                                      <div class="radio-wrapper content-box-row">
                                        <label class="radio-label">
                                          <div class="radio-input">
                                            <input class="input-radio" name="payment" path="payment" type="radio" value="2">
                                          </div>
                                          <span class="radio-label-primary">Giữ hàng tại cửa hàng</span>
                                        </label>
                                      </div>

                                    </div>
                                  </div>
                                </div>

                              </div>

                            </div>
                          </div>
                          <div class="step-footer">

                            <input name="utf8" type="hidden" value="✓">
                              <button type="submit" class="step-footer-continue-btn btn">
                                <span class="btn-content">Tiếp Tục Hoàn Thành Đơn Hàng</span>
                                <i class="btn-spinner icon icon-button-spinner"></i>
                              </button>

                              <a class="step-footer-previous-link" href="/cart">
                                Quay về Giỏ hàng
                              </a>
                          </div>
                        </div>
                      </div>
                    </form>
                    <div class="main-footer">
                    </div>
                  </div>
                </div>
              </div>

            </body>

          </html>

      </c:when>
      <c:otherwise>
        <script>
          window.location.href = "${pageContext.request.contextPath}/cart";
        </script>
      </c:otherwise> 
    </c:choose>
  </c:when>
  <c:otherwise>
    <script>
          window.location.href = "${pageContext.request.contextPath}/cart";
    </script>
  </c:otherwise> 
</c:choose>
