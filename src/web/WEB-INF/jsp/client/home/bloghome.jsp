<%-- 
    Document   : bloghome
    Created on : Jan 25, 2019, 11:37:18 AM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="home-blog hidden-xs">
  <div class="container">
    <div class="general__title home-blog__title">
      <h2>${confighm.titleBlog}</h2>
    </div>
    <div class="home-blog__list">
      <div class="row">
        <c:forEach items="${blog_home}" var="s">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="article-item">
              <div class="article-item__thumb">
                <a href="${pageContext.request.contextPath}/blogs/details/${s.id}">
                  <img src="${pageContext.request.contextPath}/resources/images/${s.image}" alt="${s.name}">
                </a>
              </div>
              <div class="article-item__content">
                <h3 class="article-item__title"><a href="${pageContext.request.contextPath}/resources/images/${s.image}" title="${s.name}">${s.name}</a></h3>
                <div class="article-item__date"><fmt:formatDate pattern = "dd-MM-yyyy HH:mm:ss" value = "${c.createTime}" /></div>
                <div class="article-item__summary"> ${s.note}</div>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>
  </div>
</section>