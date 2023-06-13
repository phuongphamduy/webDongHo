<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../views/css/bootstrap.min.css">
<script src="../views/js/bootstrap.min.js"></script>
<script src="../views/js/jquery.min.js"></script>
<script src="../views/js/slick.min.js"></script>
<link rel="stylesheet" href="../views/css/slick.css">
<link rel="stylesheet" href="../views/css/slick-theme.css">
<link rel="stylesheet" href="../views/css/main.css">
<link rel="stylesheet" href="../views/css/details.css">
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
		<div class="product">
			<div class="row">
				<div class="col-6">
					<div class="product-img-wrap">
						<img src="../views/image/product/${product.image }" width="100%"
							alt="">
					</div>
				</div>
				<div class="col-6">
					<div class="product-content">
						<h1 class="product-content-name">${product.name }</h1>
						<p class="product-content-price">
							<span class="new"> <fmt:formatNumber
									value="${product.price - product.price * product.discount / 100 }"
									type="currency" />
							</span> <span class="old"> <fmt:formatNumber
									value="${product.price }" />
							</span>
						</p>
						<p class="product-content-detail">Đo nhịp tim, Tính lượng
							Calories tiêu thụ, Đếm số bước chân, Tính quãng đường chạy, Chế
							độ luyện tập, Phát hiện té ngã, Báo thức, Nghe nhạc với tai nghe
							Bluetooth, Gọi điện trên đồng hồ, Từ chối cuộc gọi, Dự báo thời
							tiết, La bàn, Điều khiển chơi nhạc, Thay mặt đồng hồ</p>
						<div class="product-content-qty">
							<p>Số lượng</p>
							<form action="/cart/${product.id }" medthod="post">
								<div class="input-group mb-3" style="width: 150px;">
									<div class="input-group-prepend">
										<button class="btn btn-outline-secondary" onclick="decrease()"
											type="button" id="button-addon1">
											<i class="fa-solid fa-circle-minus"></i>
										</button>
									</div>
									<input type="number" name="qty" class="form-control text-center"
										id="qty-input" placeholder="" value="1"
										aria-label="Example text with button addon"
										aria-describedby="button-addon1"
										style="color: #f61900; font-weight: 700;">
									<div class="input-group-prepend">
										<button class="btn btn-outline-secondary" onclick="increase()"
											type="button" id="button-addon1">
											<i class="fa-solid fa-circle-plus"></i>
										</button>
									</div>
								</div>
								<button class="qty-btn">
									<i class="fa-solid fa-basket-shopping"></i> Cho vào giỏ hàng
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="detail-product">
			<h1 class="detail-product-heading">Thông tin chi tiết</h1>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th scope="row">Tên sản phẩm</th>
						<td>${product.name }</td>
					</tr>
					<tr>
						<th scope="row">Hãng sản xuất</th>
						<td>${product.category.name }</td>
					</tr>
					<tr>
						<th scope="row">màn hình</th>
						<td>Retina</td>
					</tr>
					<tr>
						<th scope="row">Màu sắc</th>
						<td>Màu hồng</td>
					</tr>
					<tr>
						<th scope="row">Thời lượng pin</th>
						<td>Sử dụng đến 18h</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="another-product">
			<h1 class="detail-product-heading">Sản phẩm liên quan</h1>
			<div class="row another-product-list">
				<c:forEach var="item" items="${products.content }">
					<div class="col-3 another-product-item">
						<div class="product-item">
							<a href="/details/${item.id }" class="product-item-link"></a>
							<div class="product-img">
								<img src="../views/image/product/${item.image }" alt="">
							</div>
							<div class="product-content text-center">
								<p class="product-name">${item.name }</p>
								<div class="product-price">
									<fmt:formatNumber type="currency" value="${item.price }" />
								</div>
							</div>
							<div class="product-icon">
								<a href="/details/${item.id }" class="text-center"> <i
									class="fa-solid fa-magnifying-glass-plus"></i>
								</a> <a href="" class="text-center"> <i
									class="fa-solid fa-basket-shopping"></i>
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/views/Layout/footer.jsp"></jsp:include>
	</footer>
	<script>
		let qty = document.getElementById("qty-input");
		function increase() {
			let qtyValue = qty.value;
			qtyValue++;
			qty.value = qtyValue;
		}

		function decrease() {
			let qtyValue = document.getElementById("qty-input").value;
			if (qtyValue > 1) {
				qtyValue--;
				qty.value = qtyValue;
			}

		}
		$('.another-product-list').slick({
			slidesToShow : 5,
			slidesToScroll : 1,
			autoplay : true,
			autoplaySpeed : 2000,
			adaptiveHeight : true,
			arrows : true,
			Infinity : true
		});
	</script>
</body>

</html>