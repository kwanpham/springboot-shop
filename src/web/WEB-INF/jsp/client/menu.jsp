<%-- 
    Document   : menu
    Created on : Jan 23, 2019, 11:54:07 PM
    Author     : Ngoc Hoan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${mainmenu}" var="cs">
  <c:choose>
    <c:when test="${cs.pageStyle == 1}">
      <c:choose>
        <c:when test="${cs.formatPage == 1}">
          <c:forEach items="${list_menu_cate}" var="cate">
            <c:choose>
              <c:when test="${cs.groupLink == cate.id}">
                <li class="menu__item"><a href="${pageContext.request.contextPath}/category/${cate.id}" class="menu__link">${cs.menuName}</a></li>
                </c:when>
              </c:choose>
            </c:forEach>
          </c:when>
          <c:otherwise>
            <c:forEach items="${list_menu_post}" var="post">
            ${post.id}
              <c:choose>
                <c:when test="${cs.groupLink == post.id}">
                <li class="menu__item"><a href="${pageContext.request.contextPath}/blogs/${post.id}" class="menu__link">${cs.menuName}</a></li>
                </c:when>
              </c:choose>
            </c:forEach>
          </c:otherwise>
        </c:choose>
      </c:when> 
      <c:when test="${cs.pageStyle == 2}">
      <li class="menu__item"><a href="${pageContext.request.contextPath}/pages/${cs.menuId}" class="menu__link">${cs.menuName}</a></li>
      </c:when>  
      <c:when test="${cs.pageStyle == 3}">
      <li class="menu__item"><a href="${cs.urlPage}" class="menu__link">${cs.menuName}</a></li>
      </c:when>  
    </c:choose>
  </c:forEach>
