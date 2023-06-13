<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../views/css/bootstrap.min.css">
<script src="../views/js/bootstrap.min.js"></script>
<script src="../views/js/jquery.min.js"></script>
<link rel="stylesheet" href="../views/css/main.css">
<link rel="stylesheet" href="../views/css/cart.css">
<script src="https://kit.fontawesome.com/5a854a2686.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<fmt:setLocale value="vi_VN" />
	<div class="container">
		<jsp:include page="/views/Layout/header.jsp"></jsp:include>
		<jsp:include page="/views/Layout/navbar.jsp"></jsp:include>
	</div>
	<div class="container">
		<div class="cart">
			<h1 class="cart-heading">Giỏ hàng</h1>
			<table class="table">
				<tbody>
					<c:forEach var="item" items="${items }">
						<tr>
							<form action="/cart/update/${item.id }" method="post">
								<td><img src="../views/image/product/${item.product.image }"
									width="100px" alt=""></td>
								<td>
									<p class="cart-product-name">${item.product.name }</p>
									<p class="cart-product-price" style="color: red;"> <fmt:formatNumber value=" ${item.product.price -  (item.product.discount * item.product.price / 100) }" type="currency" /></p>
								</td>
								<td><input class="cart-input-qty" name="quantity" onblur="this.form.submit()" type="number" min="1"
									value="${item.quantity }"></td>
									<td><p class="cart-product-price" style="color: red;"><fmt:formatNumber value=" ${(item.product.price -  (item.product.discount * item.product.price / 100)) * item.quantity }" type="currency" /></p></td>
								<td><a href="/cart/delete/${item.id }" class="cart-product-remove">Xóa</a></td>
							</form>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="cart-sum-wrap">
				<p class="cart-sum">
					<span class="cart-sum-label">Tổng tiền</span> <span
						class="cart-sum-price" style="color: red; font-weight: 700;"> <fmt:formatNumber value="${sum }" type="currency" /> </span>
				</p>
				<a href="/pay" class="btn btn-primary">Thanh toán</a>
			</div>
		</div>

	</div>
	<footer style="margin-top: 30px;">
		<jsp:include page="/views/Layout/footer.jsp"></jsp:include>
	</footer>

</body>

</html>