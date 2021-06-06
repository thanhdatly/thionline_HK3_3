<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>

<title>Đăng ký</title>
</head>
<body>
<div class="main-w3layouts wrapper">
	<h1>Đăng ký</h1>
	<div class="main-agileinfo">
		<div class="agileits-top">
			<form action="<c:url value='/dang-ky'/>" id="formReg"method="post">
				<input class="text" type="text" name="fullname" placeholder="Họ và tên" required="">
				<br/>
				<input class="text" type="text" name="Username" placeholder="Tài khoản" required="">
				<br/>
				<input class="text" type="password" name="password" placeholder="Mật khẩu" required="">
				<input class="text w3lpass" type="password" name="password2" placeholder="Nhập lại mật khẩu" required="">
				<div class="wthree-text">
					<label class="anim">
						<input type="checkbox" class="checkbox" required="">
						<span>Tôi đồng ý với các điều khoản</span>
					</label>
					<div class="clear"> </div>
				</div>
				<input type="submit" value="Đăng ký">

				<input type="hidden" value="register"  name="action">

			</form>
			<p>Đã có tài khoản? <a href="<c:url value='/dang-nhap?action=login'/>"> Đăng nhập ngay!</a></p>
			<div class="alert alert-${alert}" style="text-align: center">
				${message}
			</div>
		</div>
	</div>
	<!-- copyright -->
	<div class="colorlibcopy-agile">

	</div>
	<!-- //copyright -->
	<ul class="colorlib-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
<!-- //main -->

</body>
</html>
