<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Đăng nhập</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
				</div>
			</div>
			<div class="card-body">
			
			
				<form action="<c:url value='/dang-nhap'/>" id="formLogin" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						
						<!--  Tài khoản -->
						<input type="text" class="form-control" placeholder="Tài khoản" name ="userName">
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						
						<!-- Mật khẩu -->
						<input type="password" class="form-control" placeholder="Mật khẩu" name ="password">
					</div>
					<div class="form-group">
					<a href="/admin-home">
						<input type="submit" value="Đăng nhập" class="btn float-right login_btn" onclick="">
					</a>
					</div>
					<input type="hidden" value="login"  name="action">
					
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Không có tải khoản?<a href="#">Đăng ký</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Quên mật khẩu?</a>
				</div>
			</div>
		</div>
	</div>
	
	<script language="javascript">
	function login() {
			
	}
		
	</script>
</body>
</html>