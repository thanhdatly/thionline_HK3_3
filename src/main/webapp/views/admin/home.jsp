<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>

<title>Trang chủ</title>

</head>

<body class="sb-nav-fixed">
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">Quản lý</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">Người dùng</li>
				</ol>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> Bảng dữ liệu Người Dùng
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>ID</th>
										<th>User name</th>
										<th>Password</th>
										<th>Full name</th>
										<th>Role</th>
										<th>Status</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>ID</th>
										<th>User name</th>
										<th>Password</th>
										<th>Full name</th>
										<th>Role</th>
										<th>Status</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="item" items="${model.listResult}">
										<tr>
											<td>${item.id}</td>
											<td>${item.userName}</td>
											<td>${item.password}</td>
											<td>${item.fullName}</td>
											<td>${item.roleId}</td>
											<td>${item.status}</td>
										</tr>
									</c:forEach>


								</tbody>
							</table>
						</div>
					</div>
				</div>



			</div>

		</main>


	</div>




</body>

</html>