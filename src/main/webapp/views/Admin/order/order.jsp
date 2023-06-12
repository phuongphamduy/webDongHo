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



	<div style="margin-left: 15%; padding: 10px">
		<span style="font-size: 40px">Danh sách đơn hàng đang chờ</span>

		<div class="card">
			<div class="card-header">Bảng danh sách</div>
			<div class="card-body">
				<!-- search -->
				<jsp:include page="/views/Admin/Layout/search.jsp"></jsp:include>
				<table class="table table-light">
					<thead style="font-size: 1.2rem; font-weight: 500">
						<td><b>STT</b></td>
						<td><b>Tài khoản</b></td>
						<td><b>Ngày tạo</b></td>
						<td><b>Địa chỉ</b></td>
						<td><b>Số điện thoại</b></td>
						<td><b>Họ và tên</b></td>
						<td><b>Email</b></td>
						<td><b>Giá</b></td>
						<td><b>Status</b></td>
					</thead>
					<tbody>
						<c:forEach items="${OrderItems}" var="o">
							<tr class="table-active">
								<td>${o.id}</td>
								<td>${o.account.username}</td>
								<td><fmt:formatDate value="${o.createdate}" pattern="dd-MM-yyyy" /></td>
								<td>${o.address}</td>
								<td>${o.phone}</td>
								<td>${o.fullname}</td>
								<td>${o.email}</td>
								<td><fmt:formatNumber pattern="#,##0" value="${o.price }" /> VNĐ</td>
								<td>${o.status}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div>
					<a href="/admin/order/detailorder"><button
							class="btn btn-primary">Chi tiết</button> </a>
				</div>
			</div>
		</div>
		<jsp:include page="/views/Admin/Layout/footer.jsp"></jsp:include>
	</div>
</body>
</html>
