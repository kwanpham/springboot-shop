<%-- 
    Document   : index
    Created on : Jan 16, 2019, 1:48:27 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="vi">
    <jsp:include page="header.jsp"/>
   <body ontouchstart="" id="a-mobile-store">
      <div class="bg_mmenu">
         <div class="page">
             <jsp:include page="menu_top.jsp" />
            <h1 class="hidden">Amobile</h1>
            <section id="homepage-slider" class="slider theme--color--white">
               <div class="container">
                  <div class="bg-slider">
                     <div id="slider" class="theme-default">
                        <a href="#">
                        <img src="images/home-slider-1cc42.jpg" alt="Bảo hành 1 năm 1 đổi 1 với iPhone & iPad" />
                        </a>
                        <a href="#">
                        <img src="images/home-slider-2cc42.jpg" alt="Amobile" />
                        </a>
                     </div>
                  </div>
               </div>
            </section>
            <section id="bannerafterslide">
               <div class="container">
                  <div class="khungAnh">
                     <a class="khungAnhCrop" href="#" title="Đồng hồ nam">
                     <img src="${pageContext.request.contextPath}/resources/client/images/sm-dong-ho-nam.jpg" alt="" class="tall">
                     </a>
                  </div>
                  <div class="khungAnh">
                     <a class="khungAnhCrop" href="#" title="Đồng hồ nữ">
                     <img src="${pageContext.request.contextPath}/resources/client/images/sm-dong-ho-nu.jpg" alt="" class="tall">
                     </a>
                  </div>
                  <div class="khungAnh">
                     <a class="khungAnhCrop" href="#" title="Đồng hồ đôi">
                     <img src="${pageContext.request.contextPath}/resources/client/images/sm-dong-ho-doi.jpg" alt="" class="tall">
                     </a>
                  </div>
                  <div class="khungAnh">
                     <a class="khungAnhCrop" href="#" title="Đồng hồ trẻ em">
                     <img src="${pageContext.request.contextPath}/resources/client/images/sm-dong-ho-tre-em.jpg" alt="" class="tall">
                     </a>
                  </div>
                  <div class="cb"></div>
               </div>
            </section>
            <section id="product">
               <div class="container">
                  <div class="row">
                     <div class="parent spnbat">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <div class="title">
                              <a href="#" title="">Sản phẩm nổi bật</a>     
                           </div>
                           <div id="owl-demo" class="owl-carousel owl-theme">
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="/shop/addcart?id=1" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                           </div>

                        </div>
                     </div>
                     <div class="col-xs-12 banner-large">
                        <a href="index.html">
                        <img src="images/home-banner-centercc42.jpg" alt="Samsung Galaxy j7 Prime" />
                        </a>
                     </div>
                     <div class="parent">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <div class="title">
                              <a href="#" title="">ĐỒNG HỒ ATLANTIC SWISS</a>     
                           </div>
                           <div id="owl-product1" class="owl-carousel1 owl-theme">
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="parent">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <div class="title">
                              <a href="#" title="">ĐỒNG HỒ ATLANTIC SWISS</a>     
                           </div>
                           <div id="owl-product2" class="owl-carousel owl-theme">
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="parent">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <div class="title">
                              <a href="#" title="">ĐỒNG HỒ ATLANTIC SWISS</a>     
                           </div>
                           <div id="owl-product3" class="owl-carousel owl-theme">
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="parent">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <div class="title">
                              <a href="#" title="">ĐỒNG HỒ ATLANTIC SWISS</a>     
                           </div>
                           <div id="owl-product4" class="owl-carousel owl-theme">
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="parent">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <div class="title">
                              <a href="#" title="">ĐỒNG HỒ ATLANTIC SWISS</a>     
                           </div>
                           <div id="owl-product5" class="owl-carousel owl-theme">
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="../jsp/client/images/0010687nokiax68gb10793.png" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="khungAnh">
                                    <a class="khungAnhCrop0" href="" title="">
                                    <img class="owl-lazy" src="${pageContext.request.contextPath}/resources/client/images/1953389537_20335.43.28G.jpg" alt="" style="opacity: 1;">                            
                                    </a>
                                    <div class="label_sale">
                                       <p>5%</p>
                                    </div>
                                 </div>
                                 <div class="info">
                                    <a href="" title="" class="name">Đồng hồ Atlantic AT-60335.41.21R</a>
                                    <div class="price">
                                       <span class="new">
                                       8.968.000 đ
                                       </span>
                                       <span class="old">9.440.000 đ</span> 
                                       <div class="cb"></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            <section class="home-blog hidden-xs">
               <div class="container">
                  <div class="general__title home-blog__title">
                     <h2>Tin tức</h2>
                  </div>
                  <div class="home-blog__list">
                     <div class="row">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                           <div class="article-item">
                              <div class="article-item__thumb">
                                 <a href="">
                                 <img src="images/asdadsada78f.jpg" alt="Apple lần đầu ti&#234;n trực tiếp b&#225;n iPhone trả bảo h&#224;nh">
                                 </a>
                              </div>
                              <div class="article-item__content">
                                 <h3 class="article-item__title"><a href="" title="Apple lần đầu tiên trực tiếp bán iPhone trả bảo hành">Apple lần đầu tiên trực tiếp bán iPhone trả bảo hành</a></h3>
                                 <div class="article-item__date">Thứ Hai, 14/11/2016 00:13</div>
                                 <div class="article-item__summary"> Trước đây, người ta có thể dễ dàng tìm mua các mẫu máy Mac, iPad hay cả iPod hàng “tân trang” (refurbished) trên chính gian hàng online của Apple,...</div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                           <div class="article-item">
                              <div class="article-item__thumb">
                                 <a href="">
                                 <img src="images/dscf5289-14789321662691ee8.jpg" alt="iPhone 7 Jet Black v&#224; Xiaomi Mi Mix: Ai sẽ gi&#224;nh danh hiệu &quot;Chiếc m&#225;y bẩn nhất 2016&quot;?">
                                 </a>
                              </div>
                              <div class="article-item__content">
                                 <h3 class="article-item__title"><a href="" title="iPhone 7 Jet Black và Xiaomi Mi Mix: Ai sẽ giành danh hiệu "Chiếc máy bẩn nhất 2016"?">iPhone 7 Jet Black và Xiaomi Mi Mix: Ai sẽ giành danh hiệu "Chiếc máy bẩn nhất 2016"?</a></h3>
                                 <div class="article-item__date">Thứ Hai, 14/11/2016 00:08</div>
                                 <div class="article-item__summary"> Cả hai chiếc máy đều có vẻ ngoài hào nhoáng, "bóng lộn" và... dễ bẩn, nhưng liệu chiếc máy nào bẩn hơn? Nếu xét về thiết kế, iPhone 7...</div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                           <div class="article-item">
                              <div class="article-item__thumb">
                                 <a href="">
                                 <img src="images/backup-800x45008d8.jpg" alt="C&#225;ch để sao lưu tin nhắn v&#224; cuộc gọi đơn giản tr&#234;n Android">
                                 </a>
                              </div>
                              <div class="article-item__content">
                                 <h3 class="article-item__title"><a href="" title="Cách để sao lưu tin nhắn và cuộc gọi đơn giản trên Android">Cách để sao lưu tin nhắn và cuộc gọi đơn giản trên Android</a></h3>
                                 <div class="article-item__date">Chủ Nhật, 13/11/2016 23:54</div>
                                 <div class="article-item__summary">Đôi khi, trong quá trình sử dụng smartphone, bạn gặp phải những lỗi hay mã độc nên phải cài đặt lại thiết bị. Việc này sẽ làm mất toàn bộ dữ...</div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            <div id="footer">
                <jsp:include page="hotline_footer.jsp" />
               <jsp:include page="menu_bottom.jsp" />
               <jsp:include page="footer.jsp"/>
            </div>
      </div>
      </div>
   </body>
</html>
