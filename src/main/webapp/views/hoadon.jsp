<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../views/css/bootstrap.min.css">
<script src="../views/js/jquery.min.js"></script>
<script src="../views/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../views/css/main.css">
<link rel="stylesheet" href="../views/css/cart.css">
<script src="https://kit.fontawesome.com/5a854a2686.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<fmt:setLocale value="vi_VN" />
	<div class="container">
		<header class="row align-item">
			<div class="col-4 m-auto">
				<a href="/form/${link }" class="login"> <i
					class="fa-solid fa-user"></i> ${sign }
				</a> <span class="contact-number"> Hotline <span>09335425686</span>
				</span>
			</div>
			<div class="col-3 text-center">
				<img src="../views/image/logo.png" class="logo" alt="">
			</div>
			<div class="col-5 d-flex align-items-center justify-content-end">

				<div class="header-search">
					<p class="header-search-text">
						<i class="fa-solid fa-magnifying-glass"></i>Tìm kiếm
					</p>
					<form action="" class="header-search-form">
						<div class="input-group mb-3" style="width: 250px">
							<input type="text" class="form-control" placeholder="Tìm kiếm"
								aria-label="Recipient's username"
								aria-describedby="button-addon2">
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button"
									id="button-addon2">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
							</div>
						</div>
					</form>
				</div>

				<div class="header-cart">
					<a href="/cart" class="header-cart-text"> <i
						class="fa-solid fa-cart-shopping"></i>Giỏ hàng <span
						class="header-cart-qty">(${count })</span>
					</a>
				</div>
			</div>
		</header>
		<nav>
			<div class="row">
				<div class="col d-flex justify-content-center">
					<ul class="nav-list">
						<li class="nav-item"><a href="/" class="nav-link">Trang
								chủ</a></li>
						<li class="nav-item"><a href="" class="nav-link">Sản phẩm
								<i class="fa-solid fa-chevron-down"></i>
						</a>
							<ul class="subnav-list">
								<li class="subnav-item"><a href="" class="subnav-link">Xiaomi
										Watch</a></li>
								<li class="subnav-item"><a href="" class="subnav-link">Apple
										Watch</a></li>
							</ul></li>
						<li class="nav-item"><a href="" class="nav-link">Tin tức</a></li>
						<li class="nav-item"><a href="" class="nav-link">Liên hệ</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Mã đơn hàng</th>
						<th scope="col">Ngày đặt</th>
						<th scope="col">Tổng tiền</th>
						<th scope="col">Trạng thái</th>
						<th scope="col">Hoạt động</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items }">
						<tr>
							<th scope="row">${item.id }</th>
							<td>${item.createdate }</td>
							<td>  </td>
							<td>Đã giao</td>
							<td>
								<button type="button" class="btn btn-primary"
									style="margin-right: 4px;" data-toggle="modal"
									data-target="#exampleModal">Hóa đơn</button>
								<div class="modal fade" id="exampleModal" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLabel"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">Hóa đơn
													chi tiết</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<div class="form">
													<p class="form-heading"></p>
													<div class="card">
														<div class="card-body">
															<h5 class="card-title form-heading">Hóa đơn</h5>
															<table class="table">
																<thead>
																	<tr>
																		<th scope="col">Sản phẩm</th>
																		<th scope="col">Tổng tiền</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>Apple series 5 (2)</td>
																		<td>15,000,000đ</td>
																	</tr>
																	<tr>
																		<td>Apple series 5 sfsefdsfdsfdsfdsfsdf(2)</td>
																		<td>15,000,000đ</td>
																	</tr>
																	<tr>
																		<td>Apple series 5 (2)</td>
																		<td>15,000,000đ</td>
																	</tr>
																	<tr>
																		<th>Tạm tính</th>
																		<th>15,000,000đ</th>
																	</tr>
																	<tr>
																		<th>Khuyến mãi</th>
																		<th>15,000,000đ</th>
																	</tr>
																	<tr>
																		<th>Tổng</th>
																		<th>15,000,000đ</th>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div> <a href="" class="btn btn-warning disabled-link">Hủy</a>
							</td>

						</tr>
					</c:forEach>

					<tr>
						<th scope="row">1</th>
						<td>2022-6-3</td>
						<td>110.000 đ</td>
						<td>Đã giao</td>
						<td>
							<button class="btn btn-primary" style="margin-right: 4px;">Hóa
								đơn</button> <a href="" class="btn btn-warning">Hủy</a>
						</td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>2022-6-3</td>
						<td>110.000 đ</td>
						<td>Đã giao</td>
						<td>
							<button class="btn btn-primary" style="margin-right: 4px;">Hóa
								đơn</button> <a href="" class="btn btn-warning">Hủy</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>