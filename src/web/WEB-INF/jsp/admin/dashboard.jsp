<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="header.jsp" />
    <body class="no-skin">
        <jsp:include page="nav-top.jsp" />
        <div class="main-container ace-save-state" id="main-container">

            <jsp:include page="sideleft-navigation.jsp" />
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="page-content">
                        <!--hiển thị nội dung ở đây-->
                        <jsp:include page="index.jsp" />
                    </div>
                    <!-- /.page-content -->
                </div>
            </div>
            <jsp:include page="footer.jsp" />
        </div>
        <!-- /.main-container -->
        <!-- inline scripts related to this page -->
    </body>
</html>

