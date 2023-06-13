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
<script src="./views/js/jquery.min.js"></script>
<script src="./views/js/bootstrap.min.js"></script>
<script src="./views/js/slick.min.js"></script>
<link rel="stylesheet" href="./views/css/slick.css">
<link rel="stylesheet" href="./views/css/slick-theme.css">
<link rel="stylesheet" href="../views/css/main.css">
<script src="https://kit.fontawesome.com/5a854a2686.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<fmt:setLocale value="vi_VN" />
	<div class="container">
		<!-- header -->
		<jsp:include page="/views/Layout/header.jsp"></jsp:include>
		<!-- navbar -->
		<jsp:include page="/views/Layout/navbar.jsp"></jsp:include>	
	</div>
	<div class="band">
		<img src="./views/image/band.jpg" height="450px" width="100%" alt="">
	</div>
	<div class="container">
		<div class="content">
			<div class="partner">
				<div class="partner-heading">
					<h1>Đối tác</h1>
					<span>Bộ sưu tập những thương hiệu nổi tiếng về smartwatch
						trên thế giới </span>
				</div>
				<div class="row partner-brand">
					<div class="col partner-brand-img">
						<img src="./views/image/aries.jpg" alt="">
					</div>
					<div class="col partner-brand-img">
						<img src="./views/image/atlantic.jpg" alt="">
					</div>
					<div class="col partner-brand-img">
						<img src="./views/image/diamon.jpg" alt="">
					</div>
					<div class="col partner-brand-img">
						<img src="./views/image/epos.jpg" alt="">
					</div>
					<div class="col partner-brand-img">
						<img src="./views/image/jac.jpg" alt="">
					</div>
					<div class="col partner-brand-img">
						<img src="./views/image/qq.jpg" alt="">
					</div>
					<div class="col partner-brand-img">
						<img src="./views/image/aries.jpg" alt="">
					</div>
				</div>
			</div>
			<div class="product">
				<div class="partner-heading">
					<h1>Sản phẩm theo danh mục</h1>
					<span>Những sản phẩm nổi tiếng với chất lượng hàng đầu được
						shop nhập về phục vụ quý khách hàng </span>
				</div>
				<div class="product-brand">
					<div class="row justify-content-start">
						<c:forEach var="item" items="${categories}">
							<div class="col">
								<a href="/?id=${item.id }"
									class="product-brand-link text-center" onclick="choose()">
									<img src="./views/image/category/${item.image }" width="60px"
									height="60px" alt="">
									<p>${item.name }</p>
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="product-list">
					<div class="row">
						<c:forEach var="item" items="${page.content }">
							<div class="col-3">
								<div class="product-item">
									<a href="details/${item.id }" class="product-item-link"></a>
									<div class="product-img">
										<img src="./views/image/product/${item.image }" width="200px"
											height="200px" alt="">
									</div>
									<div class="product-content text-center">
										<p class="product-name">${item.name }</p>
										<div class="product-price">
											<fmt:formatNumber type="currency" value="${item.price}" />
										</div>
									</div>
									<div class="product-icon">
										<a href="/details/${item.id }" class="text-center"> <i
											class="fa-solid fa-magnifying-glass-plus"></i>
										</a> <a href="/cart/${item.id }" class="text-center"> <i
											class="fa-solid fa-basket-shopping"></i>
										</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="row justify-content-center">
						<a href="/?p=${page.number - 1 }&id=${id1}"
							class="btn btn-warning ${page.number == 0 ? 'disabled-link' : '' } ${page.number} "
							style="margin-right: 10px;">Trang trước</a> <a
							href="/?p=${page.number + 1 }&id=${id1}"
							class="btn btn-primary ${page.number == page.totalPages - 1 ? 'disabled-link' : '' } ${page.totalPages}">Trang
							sau</a>
					</div>
				</div>
			</div>
		</div>
		<div class="new-product">
			<div class="partner-heading">
				<h1>Sản phẩm mới</h1>
				<span>Những chiếc đồng hồ thể hiện đẳng cấp, thể thao dành
					cho phái mạnh </span>
			</div>
			<div class="new-product-content">
				<div class="row">
					<div class="col-8">
						<div class="row new-product-list">
							<c:forEach var="item" items="${newProducts }">
								<div class="col-4">
									<div class="product-item">
										<a href="details/${item.id }" class="product-item-link"></a>
										<div class="product-img">
											<img src="./views/image/product/${item.image }" alt="">
										</div>
										<div class="product-content text-center">
											<p class="product-name">${item.name }</p>
											<div class="product-price">
												<fmt:formatNumber value="${item.price }" type="currency" />
											</div>
										</div>
										<div class="product-icon">
											<a href="details/${item.id }" class="text-center"> <i
												class="fa-solid fa-magnifying-glass-plus"></i>
											</a> <a href="/cart/${item.id }" class="text-center"> <i
												class="fa-solid fa-basket-shopping"></i>
											</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="col-4">
						<div class="new-product-img">
							<img src="./views/image/newProduct.jpg" height="303px" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="new-product">
			<div class="partner-heading">
				<h1>Sản phẩm bán chạy</h1>
				<span>Bộ sưu tập những sản phẩm sang chảnh, thông minh dành
					cho nữ giới </span>
			</div>
			<div class="new-product-content">
				<div class="row">
					<div class="col-4">
						<div class="new-product-img">
							<img src="./views/image/womenWatch.jpg" height="303px" alt="">
						</div>
					</div>
					<div class="col-8">
						<div class="row new-product-list">
							<c:forEach var="item" items="${sales }">
								<div class="col-4">
									<div class="product-item">
										<div class="product-img">
											<img src="./views/image/product/${item.image }" alt="">
										</div>
										<div class="product-content text-center">
											<p class="product-name">${item.name }</p>
											<div class="product-price">
												<fmt:formatNumber type="currency" value="${item.price }" />
											</div>
										</div>
										<div class="product-icon">
											<a href="details/${item.id }" class="text-center"> <i
												class="fa-solid fa-magnifying-glass-plus"></i>
											</a> <a href="/cart/${item.id }" class="text-center"> <i
												class="fa-solid fa-basket-shopping"></i>
											</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="news">
			<div class="partner-heading">
				<h1>Tin tức</h1>
				<span>Chúng tôi sẵn sàng cập nhật những kiến thức, công nghệ
					mới nhất dành cho các bạn </span>
			</div>
			<div class="news-list">
				<div class="row">
					<div class="col-3">
						<a href="" class="news-item">
							<div class="news-item-img">
								<img src="./views/image/news/news1.jpg" width="100%" alt="">
							</div>
							<p class="news-item-text">Đồng hồ thông minh Apple Watch mới
								ra mắt</p>
						</a>
					</div>
					<div class="col-3">
						<a href="" class="news-item">
							<div class="news-item-img">
								<img src="./views/image/news/news1.jpg" width="100%" alt="">
							</div>
							<p class="news-item-text">Đồng hồ thông minh Apple Watch mới
								ra mắt</p>
						</a>
					</div>
					<div class="col-3">
						<a href="" class="news-item">
							<div class="news-item-img">
								<img src="./views/image/news/news1.jpg" width="100%" alt="">
							</div>
							<p class="news-item-text">Đồng hồ thông minh Apple Watch mới
								ra mắt</p>
						</a>
					</div>
					<div class="col-3">
						<a href="" class="news-item">
							<div class="news-item-img">
								<img src="./views/image/news/news1.jpg" width="100%" alt="">
							</div>
							<p class="news-item-text">Đồng hồ thông minh Apple Watch mới
								ra mắt</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>
	<footer>
		<!-- footer -->
		<jsp:include page="/views/Layout/footer.jsp"></jsp:include>	
	</footer>
	<script>
		$('.partner-brand').slick({
			slidesToShow : 6,
			slidesToScroll : 2,
			autoplay : true,
			autoplaySpeed : 2000,
			adaptiveHeight : true,
			arrows : true
		});
		$('.new-product-list').slick({
			slidesToShow : 3,
			slidesToScroll : 2,
			autoplay : true,
			autoplaySpeed : 2000,
			adaptiveHeight : true,
			accessibility : true,
		});
	</script>
</body>

</html>