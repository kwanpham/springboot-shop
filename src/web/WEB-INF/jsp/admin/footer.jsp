<%-- 
    Document   : footer
    Created on : Dec 27, 2018, 11:25:28 AM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="footer">
    <div class="footer-inner">
        <div class="footer-content">
            <span class="bigger-120">
                <span class="blue bolder"><a href="http://lamwebsitechuanseo.com/" target="_blank">Tazweb</a></span> - Thiết kế website chuyên nghiệp
            </span>

            &nbsp; &nbsp;
            <span class="action-buttons">

                <a target="_blank" href="https://www.facebook.com/tazweb.thietkewebsitechuanseo/">
                    <i href="https://www.facebook.com/tazweb.thietkewebsitechuanseo/" class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                </a>

            </span>
        </div>
    </div>
</div>


<div class="modal fade nn-modal-change-pass" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <!-- Modal content-->
    <div class="modal-content modal-dialog">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Đổi Mật Khẩu</h4>
        </div>
        <form class="form-horizontal" method="post" action="admin/auth/changepass" enctype="multipart/form-data">
            <input type="hidden" name="_token" value="WSSyLmUEn86oFJPqFaC7E4qd3D80u12bXL02vN4v" />
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12" style="padding: 20px 40px;">
                        <div class="form-group ">
                            <input type="password" class="form-control" name="nnpasswordold" placeholder="Mật khẩu hiện tại" tabindex="2" />
                        </div>
                        <div class="form-group ">
                            <input type="password" class="form-control" name="nnpasswordnew" placeholder="Mật khẩu mới" tabindex="2" />
                        </div>
                        <div class="form-group ">
                            <input type="password" class="form-control" name="nnrepasswordnew" placeholder="Nhập lại mật khẩu mới" tabindex="2" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng cửa sổ</button>
                <button type="submit" class="btn btn-info">Đổi mật khẩu</button>
            </div>
        </form>
    </div>
</div>
<!-- end modal -->
<script>
  var ckeditor = CKEDITOR.replace( 'txt_content',
  {
    language: 'vi'
  });
  CKFinder.setupCKEditor(ckeditor,'${pageContext.request.contextPath}/resources/admin/ckfinder');
</script>

 <script>
        $('.btn_confirm').confirm();
    </script>
