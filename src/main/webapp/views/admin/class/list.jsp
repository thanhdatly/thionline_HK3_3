<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách môn học</title>
</head>
<body class="sb-nav-fixed">
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <h1 class="mt-4">Quản lý</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Lớp học</li>
            </ol>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table mr-1"></i> Bảng dữ liệu Lớp Học
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%"
                               cellspacing="0">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Code</th>
                                <th>Status</th>
                                <th>Teacher</th>
                                <th>Subject</th>
                                <th>Level</th>
                                <th>Modified Date</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Code</th>
                                <th>Status</th>
                                <th>Teacher</th>
                                <th>Subject</th>
                                <th>Level</th>
                                <th>Modified Date</th>
                            </tr>
                            </tfoot>
                            <tbody>
                                <c:forEach var="item" items="${model.listResult}" >
                                    <tr>
                                        <td>${item.id}</td>
                                        <td>${item.name}</td>
                                        <td>${item.code}</td>
                                        <td>${item.status}</td>
                                        <td>${item.teacher}</td>
                                        <td>${item.subject}</td>
                                        <td>${item.level}</td>
                                        <td>${item.modifiedDate}</td>
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