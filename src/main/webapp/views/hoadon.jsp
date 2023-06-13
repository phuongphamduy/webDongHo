<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jstl/core_rt"
prefix="c"%> <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="../views/css/bootstrap.min.css" />
    <script src="../views/js/jquery.min.js"></script>
    <script src="../views/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../views/css/main.css" />
    <link rel="stylesheet" href="../views/css/cart.css" />
    <script
      src="https://kit.fontawesome.com/5a854a2686.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <fmt:setLocale value="vi_VN" />
    <div class="container">
      <jsp:include page="/views/Layout/header.jsp"></jsp:include>
      <jsp:include page="/views/Layout/navbar.jsp"></jsp:include>
    </div>
    <div class="container">
      <div class="row">
        <table class="table" style="margin-top: 30px">
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
                <td>
                  <fmt:formatNumber value="${item.price }" type="currency" />
                </td>
                <c:if test="${!item.status }">
                  <td>Đang chờ</td>
                </c:if>
                <c:if test="${item.status }">
                  <td>Đã giao</td>
                </c:if>
                <td>
                  <a
                    href="/hoadonchitiet/${item.id }"
                    class="btn btn-primary"
                    style="margin-right: 4px"
                    >Hóa đơn</a
                  >
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
