<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Danh sách các lớp</title>
</head>

<body>
  <form action="<c:url value='/class'/>" id="formSubmit" method="get">
    <div class="container">
      <!-- Page Features -->
      <div class="container text-white bg-dark p-3">
        <div class="row">
          <div class="col mb-4">
            <select class="btn btn-outline-light w-75" name="subject">
              <option value="">Môn học</option>
              <option value="all">Tất cả</option>
              <option value="1">Anh</option>
              <option value="5">Sử</option>
              <option value="7">Toán</option>
            </select>
          </div>
          <div class="col mb-4">
            <select class="btn btn-outline-light w-75">
              <option>Thời gian</option>
              <option>...</option>
              <option>...</option>
              <option>...</option>
            </select>
          </div>
          
          <div class="col mb-4">
            <select class="btn btn-outline-light w-75">
              <option>Khối</option>
              <option>10</option>
              <option>11</option>
              <option>12</option>
            </select>
          </div>


        </div>
        <div class="row">
          <div class="col-9 mb-4 ">
            <input class="form-control" type="text" placeholder="" id="search">
          </div>
          <div class="col-3 mb-4">
            	<a href="<c:url value='/class?page=1&maxPageItem=6&search=$(#"search").val()'/>"><button class="btn btn-danger my-2 my-sm-0" type="button">Tìm kiếm</button></a><br>
          </div>
        </div>
      </div>
      <div class="container text-white bg-dark p-3">
        <div class="row text-center">
          <c:forEach var="item" items="${model.listResult}">
            <div class="col-md-4 pb-1 pb-md-0" style="padding-bottom: 30px">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">
                    <a href="<c:url value='/classroom?id=${item.id}'/>" class="text-decoration-none">
                      <font color="#F53803 " size="4">${item.name}</font><br>
                      <font color="#000000" size="3">Khối: ${item.level}</font>
                    </a>
                  </h5>
                </div>
              </div>
            </div>
            <br>
            <br>
            <br><br><br>
          </c:forEach>




          <hr>
          <br>
          <br>
          <br>

          <nav aria-label="Page navigation" style="min-width: 800px	;z-index:2; ;padding-left:30px;padding-top: 30px;">
          
            <ul class="pagination" id="pagination"  ></ul>
            <input type="hidden" value="" id="page" name="page">
            <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
            <input type="hidden" value="" id="subjectId" name="subjectId">
          </nav>
			

        </div>
      </div>
   </div>
   
  </form>
  <script type="text/javascript">
	  	var totalPage = ${model.totalPage};
	  	var currentPage = ${model.page};
	  	var limit =6;
	  	/*var subjectId = $('#subjectId').value;*/
        const url = window.location.search;
        const urlParams = new URLSearchParams(url);
        const subjectId = urlParams.get('subjectId');
	    $(function () {
	      window.pagObj = $('#pagination').twbsPagination({
	        totalPages: totalPage,
	        visiblePages: 10,
	        startPage: currentPage,
	        onPageClick: function (event, page) {
	        if(currentPage !=page)
	         {

              $('#maxPageItem').val(limit);
              $('#page').val(page);
               $('#subjectId').val(subjectId);
              $('#formSubmit').submit();
	         }
	         	
	        
	        }
	      }).on('page', function (event, page) {
	        console.info(page + ' (from event listening)');
	      });
	    });
  </script>
  <br>
  <br>
  <br>
 
</body>

</html>