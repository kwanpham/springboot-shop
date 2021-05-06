<%-- 
    Document   : edit_category
    Created on : Dec 30, 2018, 8:50:48 PM
    Author     : Ngoc Hoan
--%>

<%@page import="dao.HomeDaoIml"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html lang="en">
  <jsp:include page="template/header.jsp" />
  <style>
    .form-contact {
      background: #f2f2f2;
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 20px;
    }
    button.btn.btn-primary {
      float: right;
    }
  </style>
  <body class="no-skin">
    <div class="main-container ace-save-state" id="main-container">
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
                      <span><span class="count">0</span> <span class="hidden-xs  hidden-sm">sản phẩm</span></span>
                    </a>
                    <div class="cart-droplist hidden-xs">
                      <div style="display: none;" class="cart-droplist__content arrow_box">
                        <div class="cart-droplist__status"><i class="fa fa-check" aria-hidden="true"></i> <span class="cart-counter-list">0</span> Sản phẩm trong giỏ hàng</div>
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
            <!--LOAD MENU-->
            <jsp:include page="menu.jsp" />
            <!--LOAD MENU-->
          </ul>
        </div>
      </nav>
      <div class="main-content">
        <div class="container">
          <div class="main-content-inner">
            <div class="page-content">
              <!--hiển thị nội dung ở đây-->
              <div class="internew-content">
                <div class="curd" style=" margin-right:70px;  width:100%;">
                  <f:form action="shop/contactInsert" modelAttribute="contact" method="post">
                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                      <div class="row">
                        <div class="col-md-12 col-xs-12 col-lg-12">
                          <div class="breadcrumb">
                            <div class="breadcrumb-left">
                              <a href="index" class="title_bread"> Trang chủ</a>
                              <span style="color:#ccc;margin:0px 15px;font-size:20px;"> /</span>
                              <span class="title_bread"> Liên hệ</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- /.breadcrumb -->
                    </div>
                    <div class="container">
                      <div class="row">
                        <div class="title_cat col-md-12 col-xs-12 col-lg-12">
                          <h3 style="color: red">${status}</h3>
                        </div>
                        <div class="col-md-6 col-xs-12 col-lg-6 form-contact">
                          <div class="row">
                            <div class="col-md-6">
                              <fieldset class="form-group">  
                                <label for="ProductName">Họ tên*</label>
                                <f:input type="hidden" path="id" />
                                <f:input class="form-control form-control-lg" placeholder="Nhập họ tên..." path="name" id="name" name="name" type="text" required="true" />
                              </fieldset>
                            </div>
                            <div class="col-md-6">
                              <fieldset class="form-group">
                                <label class="control-label" for="email">Email</label>
                                <f:input type="hidden" path="id"/>
                                <f:input class="form-control" placeholder="Nhập email..." path="email" id="name" name="name" type="email" required="true" />
                              </fieldset>
                            </div>
                            <div class="col-md-6">
                              <fieldset class="form-group">
                                <label class="control-label" for="password">Địa chỉ</label>
                                <f:input type="hidden" path="id"/>
                                <f:input class="form-control" placeholder="Nhập địa chỉ..." path="address" id="address" name="address" type="text" required="true" />
                              </fieldset>
                            </div> 
                            <div class="col-md-6">
                              <fieldset class="form-group">
                                <label class="control-label" for="password">Số điện thoại</label>
                                <f:input type="hidden" path="id"/>
                                <f:input class="form-control" placeholder="Nhập số điện thoại..." path="phone" id="phone" name="phone" type="text" required="true" />
                              </fieldset>
                            </div>
                            <div class="col-md-12">
                              <fieldset class="form-group">
                                <label class="control-label" for="password">Ghi chú</label>
                                <f:input type="hidden" path="id"/>
                                <f:textarea class="form-control" placeholder="Nhập nhập nội dung..." rows="5" path="description" id="description" name="description" type="text" required="true" ></f:textarea>
                                </fieldset>
                              </div> 
                              <div class="submit col-md-12">
                              <f:button class="btn btn-primary" type="submit" value="Submit">Submit</f:button>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-6 col-xs-12 col-lg-6">
                            <div class="maps">
                              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.6574756110344!2d105.78126221445487!3d21.04638699255324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab32dd484c53%3A0x4201b89c8bdfd968!2zMjM4IEhvw6BuZyBRdeG7kWMgVmnhu4d0LCBD4buVIE5odeG6vywgQ-G6p3UgR2nhuqV5LCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1548262734244" width="100%" height="355" frameborder="0" style="border:0" allowfullscreen></iframe>
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
      </div>
      <jsp:include page="home/footer.jsp" />
    </div>
  </div>
  <!-- /.main-container -->
  <!-- inline scripts related to this page -->
</body>
</html>


