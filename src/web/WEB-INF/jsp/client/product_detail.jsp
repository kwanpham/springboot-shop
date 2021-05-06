<%-- 
    Document   : index
    Created on : Jan 16, 2019, 1:48:27 PM
    Author     : admin
--%>
<%@page import="java.util.List"%>
<%@page import="dao.HomeDaoIml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <title>Watch - Đồng hồ đỉnh cáo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="//theme.hstatic.net/1000197181/1000253506/14/favicon.png?v=1662" type="image/png" />
    <script src='${pageContext.request.contextPath}/resources/client/js/jquery-2.2.4.min.js' type='text/javascript'></script> 
    <script src='${pageContext.request.contextPath}/resources/client/js/bootstrap.min.js' type='text/javascript'></script> 
    <link href='${pageContext.request.contextPath}/resources/client/css/bootstrap.min.scss.css' rel='stylesheet' type='text/css' />
    <link href='${pageContext.request.contextPath}/resources/client/css/font-awesome.scss.css' rel='stylesheet' type='text/css' />
    <link href='${pageContext.request.contextPath}/resources/client/css/owl.carousel.min.css' rel='stylesheet' type='text/css' />
    <link href='${pageContext.request.contextPath}/resources/client/css/styles.css' rel='stylesheet' type='text/css' />
    <link href='${pageContext.request.contextPath}/resources/client/css/owl.theme.default.min.css' rel='stylesheet' type='text/css' />
    <script src='${pageContext.request.contextPath}/resources/client/js/jquery.nivo.slider.pack.js' type='text/javascript'></script>
    <script src='${pageContext.request.contextPath}/resources/client/js/index.js' type='text/javascript'></script>  
    <link href='${pageContext.request.contextPath}/resources/client/css/nivo-slider.scss.css' rel='stylesheet' type='text/css' />
  </head>
  <body ontouchstart="" id="a-mobile-store">
    <div class="bg_mmenu">
      <div class="page">
        <header id="header" class="header">
          <div class="container">
            <div class="row">
              <div class="col-md-3 col-sm-3 col-xs-6 header__logo">
                <a href="${pageContext.request.contextPath}">
                  <img alt="logo" src="${pageContext.request.contextPath}/resources/client/images/logo.png">
                </a> 
              </div>
              <div class="col-md-3 col-sm-4 col-xs-6 header__hotline">
                <div class="info fr">
                  <div class="item">
                    <p><i class="fa fa-phone" aria-hidden="true"></i> HOTLINE
                    </p>
                    <p>
                      <a href="${cf_footer.hotline}" title="${cf_footer.hotline}">${cf_footer.hotline}</a>
                      <span> - </span>
                      <a href="tel:${cf_footer.hotline2}" title="${cf_footer.hotline2}">${cf_footer.hotline2}</a>
                    </p>
                  </div>
                  <div class="menu__cart">
                    <a href="${pageContext.request.contextPath}/cart">
                      <span class="hidden-xs hidden-sm">Giỏ hàng</span>
                      <span><span class="count">
                          <c:choose>
                            <c:when test="${count_cart_item > 0}">
                              ${count_cart_item}
                            </c:when>
                            <c:otherwise>
                              0
                            </c:otherwise>
                          </c:choose>
                        </span> <span class="hidden-xs  hidden-sm">sản phẩm</span></span>
                    </a>
                    <div class="cart-droplist hidden-xs">
                      <div style="display: none;" class="cart-droplist__content arrow_box">
                        <div class="cart-droplist__status"><i class="fa fa-check" aria-hidden="true"></i> <span class="cart-counter-list">
                            <c:choose>
                              <c:when test="${count_cart_item > 0}">
                                ${count_cart_item}
                              </c:when>
                              <c:otherwise>
                                0
                              </c:otherwise>
                            </c:choose>
                          </span> Sản phẩm trong giỏ hàng</div>
                        <div id="cart-sidebar" class="mini-list">
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="cb"></div>
                </div>
              </div>
              <div class="col-md-6 col-sm-5 col-xs-12 header__search hidden-xs">
                <form action="/shop/search" method="get">
                  <label class="hidden" for="header-search">Tìm kiếm</label>
                  <input type="text" placeholder="Nhập nội dung tìm kiếm" id="header-search" value="" maxlength="70" class="input" name="s">
                  <button type="submit" class="btnsearch"></button>
                </form>
              </div>
            </div>
          </div>
        </header>
        <nav id="nav" class="menu">
          <div class="container">
            <span class="hidden-lg hidden-md hidden-sm header__btn">
              <a href="#menu"><i class="fa fa-bars" aria-hidden="true"></i></a>
            </span>
            <form action="" method="get" class="hidden-lg hidden-md hidden-sm">
              <label class="hidden" for="search-mobile">Tìm kiếm</label>
              <input type="text" placeholder="Nhập nội dung tìm kiếm" id="search-mobile" value="" maxlength="70" class="input input__search" name="query">
              <button class="button" type="submit" aria-label="Tìm kiếm"><i class="fa fa-search" aria-hidden="true"></i></button>
            </form>
            <ul class="menu__list hidden-xs">
              <li class="menu__item">
                <a href="${pageContext.request.contextPath}" title="Home" class="home">
                  <i class="fa fa-home dntablet-l" aria-hidden="true"></i>
                </a>
              </li>
              <!--LOAD MENU-->
              <jsp:include page="menu.jsp" />
              <!--LOAD MENU-->

              <c:forEach items="${slides_home}" var="s">
                <a href="${s.url}">
                  <img src="${pageContext.request.contextPath}/resources/images/${s.image}" alt="${s.name}" />
                </a>
              </c:forEach>
          </div>
      </div>
    </div>
  </section>
  <section id="collection" class="collection">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
          <div id="product">
            <div class="imageZoomWrapper">
              <div class="view-images">
                <img src="${pageContext.request.contextPath}/resources/images/${product.image}" class="images-thumbs">
              </div>
            </div>
            <div class="infoo">
              <div class="lh22">
                <h1>${product.name}</h1>
                <c:if test="${not empty product.code}" >
                  <p class="ma-pro">Mã sản phẩm: <span>${product.code}</span></p>
                </c:if>
              </div>
              <table class="info1">
                <tbody>
                  <c:if test="${product.priceSale > product.price}">
                    <tr>
                      <td>Giá gốc: </td>
                      <td>                
                        <del style="margin-left:8px;" class="fs18 fRobotoB gia-goc"><fmt:formatNumber maxFractionDigits="3">${product.priceSale}</fmt:formatNumber> VNĐ</del>
                        </td>
                      </tr>
                      <tr>
                        <td>Giảm giá:</td>
                        <td>
                          <span class="fs18 fRobotoB giam-gia">${Math.round(100 - (product.price * 100) / product.priceSale) }%</span>
                      </td>
                    </tr>
                  </c:if>
                  <tr>
                    <td>Giá bán:</td>
                    <td>
                      <span class="fs21 cred fRobotoB gia-ban"><fmt:formatNumber maxFractionDigits="3">${product.price}</fmt:formatNumber> VNĐ</span>
                      </td>
                    </tr>
                    <tr>
                      <td>Năng lượng:</td>
                      <td>
                        <span>Đồng hồ điện tử (Quartz)</span>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <ul class="chinhsach">
                  <li>Bảo hành chính hãng</li>
                  <li>Miễn phí vận chuyển toàn quốc</li>
                  <li>Đổi trả hàng lỗi do nhà sản xuất trong vòng 48h</li>
                  <li>Thay pin miễn phí trọn đời</li>
                </ul>
                <div class="description mCustomScrollbar _mCS_1 mCS_no_scrollbar" style="padding: 5px;margin-bottom: 10px;font-style: italic;">
                  <div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside">
                    <div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                      Tất cả sản phẩm đều có hóa đơn bán hàng đi kèm. Quý khách nào không nhận được hóa đơn vui lòng liên hệ ${cf_footer.hotline}
                  </div>
                </div>
              </div>
              <div>
                <c:choose>
                  <c:when test="${product.quantity > 0}" >
                    <a href="${pageContext.request.contextPath}/addcart?id=${product.id}" title="" class="btnbuy fl">Mua hàng</a>
                  </c:when>
                  <c:otherwise>
                    <a href="javascript:0;" title="" class="btnbuy fl">Hết hàng</a>
                  </c:otherwise>
                </c:choose>


                <div class="hg">hoặc gọi</div>
                <div class="hotline fl">
                  <a href="tel:${cf_footer.hotline}" title="">${cf_footer.hotline}</a>
                  <span> - </span>
                  <a href="tel:${cf_footer.hotline2}" title="">${cf_footer.hotline2}</a>
                </div>
                <div class="cb"></div>
              </div>
            </div>
          </div>
          <div class="tabls">
            <div class="tab-slider--nav">
              <ul class="tab-slider--tabs">
                <li class="tab-slider--trigger active" rel="tab1">Thông tin chi tiết</li>
              </ul>
            </div>
            <div class="tab-slider--container">
              <div id="tab1" class="tab-slider--body" style="display: block;">
                ${product.description}
              </div>
            </div>
          </div>
          <div class="comment-fb">
            <div class="fb-comments" data-href="${pageContext.request.requestURL}" data-numposts="5" data-colorscheme="light" data-width="100%"></div>
          </div>

        </div>
        <div id="related-products" class="parent" style="margin-top:20px;">
          <div class="title">
            <a href="javascript:0;" >SẢN PHẨM CÙNG NHÓM</a>     
          </div>
          <div id="owl-related" class="owl-carousel owl-theme">
            <c:forEach items="${related_product}" var="pl">
              <c:if test="${product.id != pl.id}">
                <div class="item">
                  <div class="khungAnh">
                    <a class="khungAnhCrop0" href="${pageContext.request.contextPath}/product/${pl.id}" title="">
                      <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/images/${pl.image}" alt="" style="opacity: 1;">                            
                    </a>
                    <c:if test="${pl.priceSale > pl.price}">
                      <div class="label_sale">
                        <p>${Math.round(100 - (pl.price * 100) / pl.priceSale) }%</p>
                      </div>
                    </c:if>
                  </div>
                  <div class="info">
                    <a href="" title="" class="name">${pl.name}</a>
                    <div class="price">
                      <span class="new">
                        <fmt:formatNumber type="number" pattern="###,###" value="${pl.price}" /> ₫
                      </span>
                    </div>
                  </div>
                </div>
              </c:if>
            </c:forEach>
          </div>
        </div>
      </div>
    </div>
  </section>
  <jsp:include page="home/footer.jsp" />
  <script>
    $(document).ready(function () {

      var owl = $("#owl-related");

      owl.owlCarousel({
        items: 5, //10 items above 1000px browser width
        itemsDesktop: [1000, 5], //5 items between 1000px and 901px
        itemsDesktopSmall: [900, 3], // betweem 900px and 601px
        itemsTablet: [600, 2], //2 items between 600 and 0
        itemsMobile: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>']
      });
    });
  </script>

  <script src='${pageContext.request.contextPath}/resources/client/js/owl.carousel.min.js' type='text/javascript'></script> 
</div>
</body>
</html>
