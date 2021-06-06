<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<c:url value='dangky.css'/>" />
<title>Đăng ký</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<h2>Thông tin tài khoản</h2>
		</div>
		<form id="form" class="form">
			<div class="form-control">
			</div>
			<div class="form-control">
				<label for="email">Địa chỉ Email</label><font color="red">*</font>
				<input type="email" placeholder="" id="email" />
				<i class="fas fa-check-circle"></i>
				<i class="fas fa-exclamation-circle"></i>
				<small>Thông báo lỗi</small>
			</div>
			<div class="form-control">
				<label for="password">Mật khẩu</label><font color="red">*</font>
				<input type="password" placeholder="" id="password"/>
				<i class="fas fa-check-circle"></i>
				<i class="fas fa-exclamation-circle"></i>
				<small>Thông báo lỗi</small>
			</div>
			<div class="form-control">
				<label for="password2">Xác nhận mật khẩu</label><font color="red">*</font>
				<input type="password" placeholder="" id="password2"/>
				<i class="fas fa-check-circle"></i>
				<i class="fas fa-exclamation-circle"></i>
				<small>Thông báo lỗi</small>
			</div>
		</form>
	</div>
	<div class="container">
		<div class="header">
			<h2>Thông tin cá nhân</h2>
		</div>
		<form id="form1" class="form">
			<div class="form-control">
				<label for="username">Họ tên</label><font color="red">*</font>
				<input type="text" placeholder="" id="username" />
				<i class="fas fa-check-circle"></i>
				<i class="fas fa-exclamation-circle"></i>
				<small>Thông báo lỗi</small>
			</div>
			<div class="form-control">
				<label for="born">Ngày sinh</label>
				<input type="date" placeholder="" />
			</div>
			<div class="form-control">
				<label for="tel">Điện thoại</label><font color="red">*</font>
				<input type="tel" placeholder="" id="tel"/>
				<i class="fas fa-check-circle"></i>
				<i class="fas fa-exclamation-circle"></i>
				<small>Thông báo lỗi</small>
			</div>
			<div class="form-control">
				<label for="school">Trường</label><font color="red">*</font>
				<input type="text" placeholder="" id="school"/>
				<i class="fas fa-check-circle"></i>
				<i class="fas fa-exclamation-circle"></i>
				<small>Thông báo lỗi</small>
			</div>
			<div class="form-control">
				<label for="classroom">Lớp</label><font color="red">*</font>
				<input type="text" placeholder="" id="classroom"/>
				<i class="fas fa-check-circle"></i>
				<i class="fas fa-exclamation-circle"></i>
				<small>Thông báo lỗi</small>
			</div>
			<div class="form-control">
				<label for="city">Thành phố</label>
				<select name= "flatform">
					<option value="An Giang">An Giang</option>
					<option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu</option>
					<option value="Bắc Giang">Bắc Giang</option>
					<option value="Bắc Kạn">Bắc Kạn</option>
					<option value="Bạc Liêu">Bạc Liêu</option>
					<option value="Bắc Ninh">Bắc Ninh</option>
					<option value="Bến Tre">Bến Tre</option>
					<option value="Bình Định">Bình Định</option>
					<option value="Bình Dương">Bình Dương</option>
					<option value="Bình Phước">Bình Phước</option>
					<option value="Bình Thuận">Bình Thuận</option>
					<option value="Bình Thuận">Bình Thuận</option>
					<option value="Cà Mau">Cà Mau</option>
					<option value="Cao Bằng">Cao Bằng</option>
					<option value="Đắk Lắk">Đắk Lắk</option>
					<option value="Đắk Nông">Đắk Nông</option>
					<option value="Điện Biên">Điện Biên</option>
					<option value="Đồng Nai">Đồng Nai</option>
					<option value="Đồng Tháp">Đồng Tháp</option>
					<option value="Đồng Tháp">Đồng Tháp</option>
					<option value="Gia Lai">Gia Lai</option>
					<option value="Hà Giang">Hà Giang</option>
					<option value="Hà Nam">Hà Nam</option>
					<option value="Hà Tĩnh">Hà Tĩnh</option>
					<option value="Hải Dương">Hải Dương</option>
					<option value="Hậu Giang">Hậu Giang</option>
					<option value="Hòa Bình">Hòa Bình</option>
					<option value="Hưng Yên">Hưng Yên</option>
					<option value="Khánh Hòa">Khánh Hòa</option>
					<option value="Kiên Giang">Kiên Giang</option>
					<option value="Kon Tum">Kon Tum</option>
					<option value="Lai Châu">Lai Châu</option>
					<option value="Lâm Đồng">Lâm Đồng</option>
					<option value="Lạng Sơn">Lạng Sơn</option>
					<option value="Lào Cai">Lào Cai</option>
					<option value="Long An">Long An</option>
					<option value="Nam Định">Nam Định</option>
					<option value="Nghệ An">Nghệ An</option>
					<option value="Ninh Bình">Ninh Bình</option>
					<option value="Ninh Thuận">Ninh Thuận</option>
					<option value="Phú Thọ">Phú Thọ</option>
					<option value="Quảng Bình">Quảng Bình</option>
					<option value="Quảng Bình">Quảng Bình</option>
					<option value="Quảng Ngãi">Quảng Ngãi</option>
					<option value="Quảng Ninh">Quảng Ninh</option>
					<option value="Quảng Trị">Quảng Trị</option>
					<option value="Sóc Trăng">Sóc Trăng</option>
					<option value="Sơn La">Sơn La</option>
					<option value="Tây Ninh">Tây Ninh</option>
					<option value="Thái Bình">Thái Bình</option>
					<option value="Thái Nguyên">Thái Nguyên</option>
					<option value="Thanh Hóa">Thanh Hóa</option>
					<option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
					<option value="Tiền Giang">Tiền Giang</option>
					<option value="Trà Vinh">Trà Vinh</option>
					<option value="Tuyên Quang">Tuyên Quang</option>
					<option value="Vĩnh Long">Vĩnh Long</option>
					<option value="Vĩnh Phúc">Vĩnh Phúc</option>
					<option value="Yên Bái">Yên Bái</option>
					<option value="Phú Yên">Phú Yên</option>
					<option value="Tp.Cần Thơ">Tp.Cần Thơ</option>
					<option value="Tp.Đà Nẵng">Tp.Đà Nẵng</option>
					<option value="Tp.Hải Phòng">Tp.Hải Phòng</option>
					<option value="Tp.Hà Nội">Tp.Hà Nội</option>
					<option value="TP  HCM">TP HCM</option>
				</select>
			</div>
			<button id="submit">Đăng ký</button>
		</form>
	</div>
<script src="<c:url value='dangky.js'/>"></script>
</body>
</html>
