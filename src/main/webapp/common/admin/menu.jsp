<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div id="layoutSidenav_nav">
	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		<div class="sb-sidenav-menu">
			<div class="nav">
				<div class="sb-sidenav-menu-heading">Quản lý</div>
				<a class="nav-link" href="<c:url value='/admin-home'/>">
					<div class="sb-nav-link-icon">
						<i class="fas fa-tachometer-alt"></i>
					</div> Tài Khoản
				</a>
				<a class="nav-link" href="<c:url value='/admin-class'/>">
					<div class="sb-nav-link-icon">
						<i class="fas fa-tachometer-alt"></i>
					</div> Lớp học
				</a>
			</div>
		</div>
		<div class="sb-sidenav-footer">
			<div class="small">Xin chào,</div>
			${USERMODEL.fullName}
		</div>
	</nav>
</div>