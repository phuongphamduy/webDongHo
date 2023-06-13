<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="../views/css/bootstrap.min.css" />
    <script src="../views/js/bootstrap.min.js"></script>
    <script src="../views/js/jquery.min.js"></script>
    <link rel="stylesheet" href="../views/css/main.css" />
    <link rel="stylesheet" href="../views/css/thanhtoan.css" />
    <script
      src="https://kit.fontawesome.com/5a854a2686.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div class="container">
      <jsp:include page="/views/Layout/header.jsp"></jsp:include>
      <jsp:include page="/views/Layout/navbar.jsp"></jsp:include>
    </div>
    <div class="container">
      <h1 class="message">Thanh toán thành công</h1>
      <p class="message">(Vui lòng kiểm tra email)</p>
      <div class="button-wrap d-flex justify-content-center">
        <a href="/" class="btn btn-primary">Quay trở lại trang chủ</a>
      </div>
    </div>
    <footer style="margin-top: 30px">
      <jsp:include page="/views/Layout/header.jsp"></jsp:include>
    </footer>
  </body>
</html>
