<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/views/Admin/Layout/sidebar.jsp"></jsp:include>
	
	<form:form action="/admin/form/categorycreate" modelAttribute="categoryItem"
		method="post" class="me-auto ms-auto w-50 mt-3 row" enctype="multipart/form-data">
	
	<div style="margin-left: 15%; padding: 10px">
		<span style="font-size: 40px">Form danh mục</span>
		
		<c:if test="${not empty success_category}">
				<div class="alert alert-success" role="alert">
					${success_category}</div>
			</c:if>

		<div class="card">
			<div class="card-header">
				<h4>Cập nhật</h4>
			</div>
			<div class="card-body">
				<div class="row g-3">

					<div class="col-md-6">
						<label for="id" class="form-label"><b>Id</b></label> 
						<form:input class="form-control" type="text" path="id"/>
						<form:errors path="id" class="form-text text-danger" />
							<c:if test="${not empty error_category}">
								<div class="form-text text-danger">${error_category}</div>
							</c:if>
					</div>
					<div class="col-md-6">
						<label for="name" class="form-label"><b>Thể loại</b></label> 
						<form:input class="form-control" type="text" path="name"/>
						<form:errors path="name" class="form-text text-danger" />
							<c:if test="${not empty error_category}">
								<div class="form-text text-danger">${error_category}</div>
							</c:if>
					
					</div>
					<div class="col-md-12">
						<label for="img" class="form-label"><b>Hình</b></label> <input
							class="form-control" type="file" name="img">
					</div>

					<div class="col-12" style="padding: 10px;">
						<button formaction="/admin/form/categorycreate" type="submit"
								class="btn btn-primary">Thêm</button>
							<button formaction="/admin/form/danhmuc" type="submit"
								class="btn btn-danger">Làm mới</button>

					</div>
				</div>
			</div>

		</div>

	</div>
	</form:form>
	
	<div style="margin-left: 15%; padding: 10px">
		<span style="font-size: 40px">Danh sách các loại sản phẩm</span>

		<div class="card">
			<div class="card-header">Bảng danh sách</div>
			<div class="card-body">
				
				<table class="table table-light">
					<thead
						style="font-size: 1.2rem; font-weight: 500; text-align: center">
						<td><b>ID</b></td>
						<td><b>Tên Loại</b></td>
						<td><b>Logo</b></td>						
					</thead>					
					<tbody style="text-align: center">
						<c:forEach items="${categoryItems}" var="ca">
							<tr class="table-active">
								<td>${ca.id }</td>
								<td>${ca.name }</td>
								<td><img src="${pageContext.request.contextPath }/views/image/category/${ca.image}" height="50px" width="70px" alt=""></td>								
							</tr>
						</c:forEach>


					</tbody>
				</table>
			</div>
		</div>
	
	
	<jsp:include page="/views/Admin/Layout/footer.jsp"></jsp:include>
</body>
</html>
