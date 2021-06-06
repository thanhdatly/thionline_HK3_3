<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
	<title><dec:title default="Trang chủ" /></title>
	<link href="<c:url value='template/admin/css/styles.css'/>" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    
</head>
<body class="sb-nav-fixed">

	<!-- header -->
	<%@ include file="/common/admin/header.jsp"%>
	<!-- header -->
	<div id="layoutSidenav">
	
		<!-- menu -->
		<%@ include file="/common/admin/menu.jsp"%>
		<!-- menu -->
		
		<dec:body />
		
		<a id=""></a>
	</div>
	<div>
        <a id="back-to-top" style="height: 35px; width: 35px; background-color:#dce5fc; position: fixed;    bottom: 85px;   right: 8px;   display: none; z-index:3;" href="#"  role="button" ><i id="right" style="margin-left: 11px;margin-top: 10px;" class="fas fa-chevron-up"></i></a>
    </div>
	<!-- footer -->
	<%@ include file="/common/admin/footer.jsp"%>
	<!-- footer -->
	

		
		<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<c:url value='template/admin/js/scripts.js'/>"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
		<script src="<c:url value='template/admin/assets/demo/datatables-demo.js'/>"></script>
		
		<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		
		
		<script id="rendered-js">
			$(document).ready(function () {
			  $(window).scroll(function () {
			    if ($(this).scrollTop() > 0) {
			      $('#back-to-top').fadeIn();
			    } else {
			      $('#back-to-top').fadeOut();
			    }
			  });
			  // scroll body to 0px on click
			  $('#back-to-top').click(function () {
			    $('body,html').animate({
			      scrollTop: 0 },
			    400);
			    return false;
			  });
			});
			//# sourceURL=pen.js
   	 	</script>
</body>
</html>