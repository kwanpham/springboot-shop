<%-- 
    Document   : thank-you
    Created on : Jan 19, 2019, 11:43:26 PM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>

<head>
    <meta name="viewport" content="width=device-width">
    <title>Đặt hàng thành công </title>
    <link href='${pageContext.request.contextPath}/resources/client/css/bootstrap.min.scss.css' rel='stylesheet' type='text/css' />
</head>

<body style="background-color: #eceeef;">
    <div class="jumbotron text-center">
        <h1 class="display-3" style="font-size:55px;">Cảm Ơn Bạn Đã Mua Hàng!</h1>
        <p class="lead"><strong>Chúng tôi sẽ liên hệ với bạn sớm nhất sau khi nhận được đơn hàng của bạn</strong></p>
        <hr>
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}" role="button">Tiếp tục mua hàng</a>
        </p>
    </div>
    <style>
        .tb_button {
            padding: 1px;
            cursor: pointer;
            border-right: 1px solid #8b8b8b;
            border-left: 1px solid #FFF;
            border-bottom: 1px solid #fff;
        }
        
        .tb_button.hover {
            borer: 2px outset #def;
            background-color: #f8f8f8 !important;
        }
        
        .ws_toolbar {
            z-index: 100000
        }
        
        .ws_toolbar .ws_tb_btn {
            cursor: pointer;
            border: 1px solid #555;
            padding: 3px
        }
        
        .tb_highlight {
            background-color: yellow
        }
        
        .tb_hide {
            visibility: hidden
        }
        
        .ws_toolbar img {
            padding: 2px;
            margin: 0px
        }
    </style>
</body>

</html>