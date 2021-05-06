<%-- 
    Document   : header
    Created on : Jan 20, 2019, 2:12:30 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
  <script src='${pageContext.request.contextPath}/resources/client/js/owl.carousel.min.js' type='text/javascript'></script> 
  <script type="text/javascript">
    $('.owl-carousel').owlCarousel({
      margin: 10,
      nav: true,
      navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
      items: 5, //10 items above 1000px browser width
      itemsDesktop: [1000, 1], //5 items between 1000px and 901px
      itemsDesktopSmall: [900, 1], // betweem 900px and 601px
      itemsTablet: [600, 1], //2 items between 600 and 0
      itemsMobile: false,
    })
  </script>
  <script>
    $('.div-img img').click(function () {
      var img = $(this).attr('src');
      var text = $(this).next('#main-title').text();
      $('.view-images .images-thumbs').attr('src', img);
      $('#main-title-add').text(text);
    })
    $('#sperine_slider img').each(function (i, v) {
      if (i == 0) {
        var imgs = $(this).attr('src');
        $('.view-images .images-thumbs').attr('src', imgs);
      }
    });
  </script>
</head>
