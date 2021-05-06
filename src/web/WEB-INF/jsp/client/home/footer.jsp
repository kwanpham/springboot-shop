<%-- 
    Document   : footer
    Created on : Jan 20, 2019, 10:09:20 PM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id))
      return;
    js = d.createElement(s);
    js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>
<div id="footer">
  <div class="wrp">
    <div class="top">
      <div class="left fl ttu fs20 fRobotoC">
        <div class="fl">
          <div class="dib">
            <span>Tư vấn </span><span class="fRobotoB">khách hàng </span>
          </div>
          <a href="tel:${cf_footer.hotline}" title="" class="phone1">${cf_footer.hotline}</a>
          <a href="tel:${cf_footer.hotline2}" title="" class="phone2">${cf_footer.hotline2}</a>
        </div>
      </div>
      <div class="cb"></div>
    </div>
  </div>
  <div class="bot">
    <div class="wrp">
      <div class="fl left">
        <div class="item">
          <div class="fRobotoB ttu pb10 fs18">${cf_footer.titleMenuFooter1}</div>
          ${cf_footer.menuFooter1}
          <a href="" title="" class="pt10 dn dbMobile-l">
            <img src="https://www.dangquangwatch.vn/view/Css/Icon/bocongthuong.png" style="display: inline;">
          </a>
        </div>
        <div class="item">
          <div class="fRobotoB ttu pb10 fs18">${cf_footer.titleMenuFooter2}</div>
          ${cf_footer.menuFooter2}
        </div>
        <div class="item dnmobile-l">
          <div class="fRobotoB ttu pb10 fs18">${cf_footer.titleMenuFooter3}</div>
          ${cf_footer.menuFooter3}
        </div>
      </div>
      <div class="fr facebook">
        <div class="fRobotoB ttu pb10 fs18">${cf_footer.titleMenuFooter4}</div>
        <div class="img">
          <div class="fb-page" data-href="${cf_footer.menuFooter4}"  data-height="300" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false">	</div>
        </div>
      </div>
      <div class="cb vach"></div>
    </div>
              <div class="footer-copyright text-center">
        Copyrights © 2018 by <a target="_blank" href="http://lamwebsitechuanseo.com/">Tazweb</a>. <a target="_blank" href="http://lamwebsitechuanseo.com/">Powered by Tazweb</a>
      </div>
  </div>
</div>