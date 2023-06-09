<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jstl/core_rt"
prefix="c"%> <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
  </head>
  <body>
    <jsp:include page="/views/Admin/Layout/sidebar.jsp"></jsp:include>
    <div style="margin-left: 15%; padding: 10px">
      <span style="font-size: 40px">Danh sách người dùng</span>

      <div class="card">
        <div class="card-header">Bảng danh sách</div>
        <div class="card-body">
          <!-- search -->
          <jsp:include page="/views/Admin/Layout/search.jsp"></jsp:include>
          <table class="table table-light">
            <thead
              style="font-size: 1.2rem; font-weight: 500; text-align: center"
            >
              <td><b>Tài khoảng</b></td>
              <td><b>Email</b></td>
              <td><b>Mật khẩu</b></td>
              <td><b>Action</b></td>
            </thead>
            <tbody style="text-align: center">
              <tr class="table-active">
                <td>Đức Tuấn</td>
                <td>leductuan@123</td>
                <td>123456789</td>

                <td>
                  <button class="btn btn-danger">Xóa</button>
                </td>
              </tr>
              <tr>
                <td>Trọng nguyễn</td>
                <td>Trong@123</td>
                <td>123456789</td>
                <td>
                  <button class="btn btn-danger">Xóa</button>
                </td>
              </tr>
              <tr class="table-active">
                <td>Quốc Thịnh</td>
                <td>Thinh@123</td>
                <td>123456789</td>
                <td>
                  <button class="btn btn-danger">Xóa</button>
                </td>
              </tr>
              <tr>
                <td>Quốc trí</td>
                <td>leductuan@123</td>
                <td>123456789</td>
                <td>
                  <button class="btn btn-danger">Xóa</button>
                </td>
              </tr>
              <tr class="table-active">
                <td>Phương</td>
                <td>Phương@123</td>
                <td>123456789</td>
                <td>
                  <button class="btn btn-danger">Xóa</button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <jsp:include page="/views/Admin/Layout/footer.jsp"></jsp:include>
    </div>
  </body>
</html>
