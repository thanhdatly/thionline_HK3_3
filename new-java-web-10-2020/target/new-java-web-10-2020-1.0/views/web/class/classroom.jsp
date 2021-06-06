<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lớp học</title>
</head>
<body>

<div class="container">
    <form action="<c:url value='/classroom'/>" id="formSubmit" method="get">


    </form>
    <div class="container text-white bg-dark p-3" style="min-height: 500px">
        <c:forEach var="item" items="${model.listResult}">
            <div style="background-color: #ffffff;min-width: 300px;min-height: 50px;line-height: 50px">
                <a href="<c:url value='/test?id=${item.id}&position=1&time=${item.testTime.minutes}&classId=${item.classId}'/>" style="margin-left: 20px;font-size: 40px">${item.name}</a>

            </div>
            <br>
            <br>
        </c:forEach>

    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</div>

</body>
</html>