<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Trang cá nhân</title>
</head>
<body>
<div class="container-fluid">
    <div class="jumbotron bg-success">
        <h3 class="display-4 text-center text-white ">THÔNG TIN TÀI KHOẢN</h3>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link bg-primary">HỌC SINH</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-list-alt"></i>Đăng ký lớp học
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Thi thử tốt nghiệp THPT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Lịch sử thi</a>
                </li>
            </ul>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link bg-primary">LỚP HỌC KHÁC</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Học cùng gia sư</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Khảo sát ngoại ngữ</a>
                </li>
            </ul>
            <ul class="nav flex-column">
                <li class="nav-item bg-primary">
                    <a class="nav-link">TÀI KHOẢN</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Thông tin tài khoản</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Tải đề</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Nhận khuyến mãi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Rủ bạn cùng học</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Cập nhật</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Đổi mật khẩu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Đăng xuất</a>
                </li>
            </ul>
        </div>
        <div class="col-sm-9 justify-content-center">
            <button type="button" class="btn btn-success justify-content-between">ĐĂNG KÝ SỬ DỤNG CHỨC NĂNG GIÁO
                VIÊN
            </button>
            <p></p>
            <ul class="nav flex-column">
                <li class="nav-item font-weight-bold">
                    TÀI KHOẢN <p>...</p>
                </li>
                <li class="nav-item">
                    Tài khoản chính: <p>...</p>
                </li>
                <li class="nav-item">
                    Tài khoản khuyến mãi: <p>...</p>
                </li>
            </ul>
            <h4>Thông tin chung</h4>
            <table class="table">
                <thead>
                <tr>
                    <th>Họ tên:</th>
                    <th>Email:</th>
                </tr>
                </thead>
                <tbody style="font-weight: bold;">
                <tr>
                    <td>Giới tính:</td>
                    <td>Điện thoại:</td>
                </tr>
                <tr>
                    <td>Ngày sinh:</td>
                    <td>Trường:</td>
                </tr>
                <tr>
                    <td colspan="2">Tỉnh thành:</td>
                </tr>
                </tbody>
            </table>
            <h4>Gói đã mua</h4>
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th>...</th>
                    <th>...</th>
                    <th>...</th>
                    <th>...</th>
                    <th>...</th>
                    <th>...</th>
                </tr>
                </thead>
                <tbody style="font-weight: bold;">
                <tr>
                    <td>...</td>
                    <td>...</td>
                    <th>...</th>
                    <th>...</th>
                    <th>...</th>
                </tr>
                <tr>
                    <td>...</td>
                    <td>...</td>
                    <th>...</th>
                    <th>...</th>
                    <th>...</th>
                    <th>...</th>
                </tr>
                <tr>
                    <td>...</td>
                    <td>...</td>
                    <th>...</th>
                    <th>...</th>
                    <th>...</th>
                    <th>...</th>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<hr>
</body>
</html>
