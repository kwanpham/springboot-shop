<%-- 
    Document   : menu_top
    Created on : Jan 20, 2019, 2:13:56 PM
    Author     : admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
      <jsp:include page="../menu.jsp" />
      <!--LOAD MENU-->
    </ul>
  </div>
</nav>
