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
<%@taglib prefix="mytag" uri="/WEB-INF/tlds/MyCustomTag" %>
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
                  <!-- <div class="item">
                      <p><a href="" title="Giỏ hàng"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></p><p class="num">0</p><p></p>
                      <a href="" title="Giỏ hàng" class="db">
                          Giỏ hàng
                      </a>                        
                  </div> -->
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




  <div class="breadcrumbs">
    <div class="container">
      <div class="inner">
        <h1 class="title-group">${cateid.name}</h1>
        <a title="Quay lại trang chủ" href="${pageContext.request.contextPath}">Trang chủ</a><i class="fa fa-angle-right" aria-hidden="true"></i>${cateid.name}
      </div>
    </div>
  </div>
  <section id="collection" class="collection">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-4 sidebar hidden-sm hidden-xs">
          <div id="sticky-wrapper" class="sticky-wrapper">
            <div class="sidebar-collection" style="width: 263px;">
              <div class="catalog">
                <div class="catalog__title">
                  <h2>Danh mục sản phẩm</h2>
                </div>
                <div class="catalog__bg">
                  <ul class="catalog__list" style="overflow: overlay;">
                    <c:forEach items="${cates}" var="c">
                      <li class="catalog__item">
                        <a href="${pageContext.request.contextPath}/category/${c.id}" title="${c.name}">
                          ${c.name}
                        </a>
                      </li>
                    </c:forEach>
                  </ul>
                </div>
              </div>

            </div>
          </div>
        </div>
        <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
          <div class="collection-filter">
            <div class="category-products clearfix">
              <div class="products-grid clearfix">
                <div class="row">
                  <c:forEach items="${product}" var="pl">
                    <div class="item col-md-3 col-sm-3 col-xs-6">
                      <div class="product-item__grid">
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
                    </div>
                  </c:forEach>
                </div>
                <div class="pagination text-center">
                  <mytag:PaginationTaglib max="3" offset="${offset}" count="${count}" uri="${pageContext.request.contextPath}/category/${ids}" next="&raquo;" previous="&laquo;"/>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>   



  <jsp:include page="home/footer.jsp" />
  <script src='${pageContext.request.contextPath}/resources/client/js/owl.carousel.min.js' type='text/javascript'></script> 
</div>
</body>
</html>
