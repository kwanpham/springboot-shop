<%-- 
    Document   : detail_product
    Created on : Jan 20, 2019, 3:06:33 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <jsp:include page="header.jsp" />
   <body ontouchstart="" id="a-mobile-store">
      <div class="bg_mmenu">
         <div class="page">
            <jsp:include page="menu_top.jsp" />
            <div class="breadcrumbs">
               <div class="container">
                  <div class="inner">
                     <h1 class="title-group">Đồng hồ nam</h1>
                     <a title="Quay lại trang chủ" href="">Trang chủ</a><i class="fa fa-angle-right" aria-hidden="true"></i>Điện thoại
                  </div>
               </div>
            </div>
            <section id="collection" class="collection">
               <div class="container">
                  <div id="product">
                     <div class="imageZoomWrapper">
                        <div class="view-images">
                          <img src="${pageContext.request.contextPath}/resources/client/" class="images-thumbs">
                        </div>
                        <div class="owl-carousel owl-theme" id="sperine_slider">
                          <div class="item">
                            <div class="div-img">
                              <img class="img-responsive" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg">
                            </div>
                          </div>
                          <div class="item">
                            <div class="div-img">
                              <img class="img-responsive" src="${pageContext.request.contextPath}/resources/client/images/1540137979_20335.41.21R.jpg">
                            </div>
                          </div>
                          <div class="item">
                            <div class="div-img">
                              <img class="img-responsive" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg">
                            </div>
                          </div>
                          <div class="item">
                            <div class="div-img">
                              <img class="img-responsive" src="${pageContext.request.contextPath}/resources/client/images/1540137979_20335.41.21R.jpg">
                            </div>
                          </div>
                          <div class="item">
                            <div class="div-img">
                              <img class="img-responsive" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg">
                            </div>
                          </div>
                        </div>
                     </div>
                     <div class="infoo">
                        <div class="lh22">
                           <h1 class="ttu fRobotoB fs21 pb8">Đồng hồ Atlantic AT-20335.43.28G</h1>
                           <div class="fRobotoB fs16 pb8">Mã sản phẩm: AT-20335.43.28G</div>
                           <div class="fRobotoB fs16 pb8">Loại đồng hồ: Đồng hồ nữ</div>
                           <div class="fRobotoB fs16 pb8">Thương hiệu: <a href="" title="Đồng hồ Atlantic Swiss">Đồng hồ Atlantic Swiss</a></div>
                        </div>
                        <table class="info1">
                           <tbody>
                              <tr>
                                 <td>Giá gốc:</td>
                                 <td>                
                                    <span class="fs18 fRobotoB">10.780.000 VNĐ</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>Giảm giá:</td>
                                 <td>
                                    <span class="fs18 fRobotoB">10%</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>Giá bán:</td>
                                 <td>
                                    <span class="fs21 cred fRobotoB">9.702.000 VNĐ</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>Năng lượng:</td>
                                 <td>
                                    <span>Đồng hồ điện tử (Quartz)</span>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                        <ul class="chinhsach">
                           <li>Bảo hành trọn đời đối với thương hiệu Diamond D</li>
                           <li>Bảo hành 10 năm Các thương hiệu khác thuộc hệ thống Đăng Quang Watch</li>
                           <li>Đã bao gồm VAT</li>
                        </ul>
                        <div class="description mCustomScrollbar _mCS_1 mCS_no_scrollbar" style="padding: 5px;margin-bottom: 10px;font-style: italic;">
                           <div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside">
                              <div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                 Tất cả sản phẩm đều có hóa đơn bán hàng đi kèm. Quý khách nào không nhận được hóa đơn vui lòng liên hệ 0975.99.5555
                              </div>
                           </div>
                        </div>
                        <div>
                           <a href="#" title="" class="btnbuy fl">Mua hàng</a>
                           <div class="hg">hoặc gọi</div>
                           <div class="hotline fl">
                              <a href="tel:0986681189" title="">098.668.1189</a>
                              <span> - </span>
                              <a href="tel:1800.6005" title="">1800.6005</a>
                           </div>
                           <div class="cb"></div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            <div id="footer">
                <jsp:include page="footer.jsp" />
            </div>
      </div>
   </body>
</html>
