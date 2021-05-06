<%-- 
    Document   : index
    Created on : Dec 27, 2018, 1:52:14 PM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="breadcrumbs ace-save-state" id="breadcrumbs">
  <div class="breadcrumb">
    <div class="breadcrumb-left">
      <i class="menu-icon fa fa-home" aria-hidden="true"></i>
      <span class="title_bread">Quản lí chung</span>
    </div>
  </div>
</div>

<div id="sub-main">
  <center>
    <div class="row space-top text-center">
      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-md-offset-1">
        <div class="box-main">
          <div class="circle">
            <div class="glyphicon glyphicon-user"></div>
          </div>

          <h4><span class="count">${count_user}</span></h4>

          <h5>Số quản trị viên</h5>
        </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
        <div class="box-main">
          <div class="circle">
            <div class="glyphicon glyphicon-gift"></div>
          </div>
          <h4><span class="count">${count_product}</span></h4>
          <h5>Số sản phẩm</h5>
        </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
        <div class="box-main">
          <div class="circle">
            <div class="glyphicon glyphicon-duplicate"></div>
          </div>
          <h4><span class="count">${count_post}</span></h4>
          <h5>Số bài viết</h5>
        </div>
      </div>
    </div>
  </center>

  <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
      <div class="panel panel-default">
        <div class="panel-heading">
          <span class="glyphicon glyphicon-pencil" aria-hidden="true">&nbsp;</span>Sản phẩm mới nhất
        </div>
        <div class="panel-body">
          <ul class="list-group">
            <c:forEach items="${product}" var="p">
              <li class="list-group-item"><a style="color:#000;" href="${pageContext.request.contextPath}/admin/product/edit?productId=${p.id}">${p.name}</a></li>
            </c:forEach>

          </ul>
        </div>
        <div class="panel-footer text-right readmore">
          <a href="${pageContext.request.contextPath}/admin/product/index"><span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span> Xem thêm</a>
        </div>
      </div>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
      <div class="panel panel-default">
        <div class="panel-heading">
          <span class="glyphicon glyphicon-gift" aria-hidden="true">&nbsp;</span>Bài viết mới nhất
        </div>
        <div class="panel-body">
          <ul class="list-group">
            <c:forEach items="${post}" var="sp">
              <li class="list-group-item"><a style="color:#000;" href="${pageContext.request.contextPath}/admin/post/edit?postId=${sp.id}">${sp.name}</a></li>
            </c:forEach>
          </ul>
        </div>
        <div class="panel-footer text-right readmore">
          <a href="${pageContext.request.contextPath}/admin/post/index"><span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span> Xem thêm</a>
        </div>
      </div>
    </div>
  </div>

</div>

<script type="text/javascript">
  $('.count').each(function () {
    $(this).prop('Counter', 0).animate({
      Counter: $(this).text()
    }, {
      duration: 2000,
      easing: 'swing',
      step: function (now) {
        $(this).text(Math.ceil(now));
      }
    });
  });
</script>