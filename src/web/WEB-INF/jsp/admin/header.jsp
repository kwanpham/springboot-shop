<%-- 
    Document   : header
    Created on : Dec 27, 2018, 11:23:26 AM
    Author     : thang
--%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
  <title>Dashboard - Tazweb</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta charset="utf-8" />
  <meta name="description" content="TEAM PLUS" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
  <link rel="shortcut icon" href="https://dilac.com.vn/Content/Admin/assets/images/favicon.ico" type="image/ico" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />

  <!-- tazweb styles -->
  <link rel="stylesheet" href="https://dilac.com.vn/Content/Admin/assets/css/tazweb.min.css" />

  <link rel="stylesheet" href="https://dilac.com.vn/Content/Admin/assets/css/jquery-ui.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
  <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/js/bootstrap.min.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/js/jquery.confirm.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/js/jquery-ui.min.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/js/jquery-ui.custom.min.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/plugins/ckfinder/ckfinder.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/js/tazweb-elements.min.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/js/tazweb.min.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/js/simple.money.format.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/js/chosen.jquery.min.js"></script>
  <script src="https://dilac.com.vn/Content/Admin/assets/js/bootstrap-tag.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/ckeditor/ckeditor.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin/ckfinder/ckfinder.js"></script>
  <style>
    .tepi{
      margin-top: 40px;
    }
    .file-upload{display:block;text-align:center;font-family: Helvetica, Arial, sans-serif;font-size: 12px;}
    .file-upload .file-select{display:block;border: 2px solid #dce4ec;color: #34495e;cursor:pointer;height:40px;line-height:40px;text-align:left;background:#FFFFFF;overflow:hidden;position:relative;}
    .file-upload .file-select .file-select-button{background:#dce4ec;padding:0 10px;display:inline-block;height:40px;line-height:40px;}
    .file-upload .file-select .file-select-name{line-height:40px;display:inline-block;padding:0 10px;}
    .file-upload .file-select:hover{border-color:#34495e;transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;}
    .file-upload .file-select:hover .file-select-button{background:#34495e;color:#FFFFFF;transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;}
    .file-upload.active .file-select{border-color:#3fa46a;transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;}
    .file-upload.active .file-select .file-select-button{background:#3fa46a;color:#FFFFFF;transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;}
    .file-upload .file-select input[type=file]{z-index:100;cursor:pointer;position:absolute;height:100%;width:100%;top:0;left:0;opacity:0;filter:alpha(opacity=0);}
    .file-upload .file-select.file-select-disabled{opacity:0.65;}
    .file-upload .file-select.file-select-disabled:hover{cursor:default;display:block;border: 2px solid #dce4ec;color: #34495e;cursor:pointer;height:40px;line-height:40px;margin-top:5px;text-align:left;background:#FFFFFF;overflow:hidden;position:relative;}
    .file-upload .file-select.file-select-disabled:hover .file-select-button{background:#dce4ec;color:#666666;padding:0 10px;display:inline-block;height:40px;line-height:40px;}
    .file-upload .file-select.file-select-disabled:hover .file-select-name{line-height:40px;display:inline-block;padding:0 10px;}
  </style>
  <script>
    function convertToSlug(str) {

      str = str.toLowerCase();
      str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
      str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
      str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
      str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
      str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
      str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
      str = str.replace(/đ/g, "d");
      str = str.replace(/!|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g, "-");
      str = str.replace(/-+-/g, "-");
      str = str.replace(/^\-+|\-+$/g, "");
      return str;
    }
  </script>

  <script>
    $(document).ready(function () {
      $('#chooseFile').bind('change', function () {
        var filename = $("#chooseFile").val();
        if (/^\s*$/.test(filename)) {
          $(".file-upload").removeClass('active');
          $("#noFile").text("Không file nào được chọn");
        } else {
          $(".file-upload").addClass('active');
          $("#noFile").text(filename.replace("C:\\fakepath\\", ""));
        }
      });
      $('.txt_left2').click(function () {
        $('.input_telier').toggle();
      });
    });
    $(document).ready(function () {
      $('#example').DataTable();
    });
  </script>
</head>