<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="trang-chu">THI ONLINE</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a class="nav-link"
                                               href="trang-chu">Trang chủ <span class="sr-only">(current)</span>
                </a></li>
                <c:if test="${not empty USERMODEL}">
                    <li class="nav-item active"><a class="nav-link" href="<c:url value="/trang-ca-nhan?id=${USERMODEL.id}"/>">Xin chào,${USERMODEL.fullName}</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/thoat?action=logout'/>">Thoát</a></li>
                </c:if>
                <c:if test="${empty USERMODEL}">
                    <li class="nav-item active"><a class="nav-link" href="<c:url value='/dang-nhap?action=login'/>">Đăng
                        nhập</a></li>
                    <li class="nav-item active"><a class="nav-link" href="<c:url value='/dang-ky'/>">Đăng ký</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<div class="menu">
    <ul>
        <li><a href="#">GIÁO VIÊN</a></li>
        <li><a href="#">HỌC SINH</a></li>
        <li><a href="#">KIỂM TRA</a>
            <ul class="sub-menu" style="z-index: 3;">
                <li><a href="#">Thi THPT Quốc Gia</a></li>
                <li><a href="#">KT Học Kỳ</a></li>
                <li><a href="#">KT 45 Phút</a></li>
                <li><a href="#">KT 15 Phút</a></li>
            </ul>
        </li>
        <li><a href="#">ĐÁNH GIÁ</a></li>
        <li><a href="#">TIN TỨC</a></li>
        <li><a href="#">HƯỚNG DẪN</a></li>
        <li><a href="<c:url value='/class?page=1&maxPageItem=6&subjectId=all'/>">TÌM KIẾM</a></li>
        <%-- <li><a href="<c:url value='web/dangky.jsp'/>">ĐĂNG KÝ</a></li> --%>
    </ul>
</div>