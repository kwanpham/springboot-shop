<%-- 
    Document   : collection_index_1
    Created on : Jan 19, 2019, 5:20:29 PM
    Author     : thang
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="parent">
  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <div class="title">
      <a href="${confighm.urlCollection2}" title="${confighm.titleCollection2}">${confighm.titleCollection2}</a>     
    </div>
    <div id="owl-product1" class="owl-carousel owl-theme">
      <c:forEach items="${product_home_2}" var="pl">
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
      </c:forEach>
    </div>

  </div>
</div>