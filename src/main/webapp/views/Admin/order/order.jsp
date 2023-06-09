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
      <span style="font-size: 40px">Danh sách đơn hàng đang chờ</span>

      <div class="card">
        <div class="card-header">Bảng danh sách</div>
        <div class="card-body">
          <!-- search -->
          <jsp:include page="/views/Admin/Layout/search.jsp"></jsp:include>
          <table class="table table-light">
            <thead style="font-size: 1.2rem; font-weight: 500">
              <td><b>STT</b></td>
              <td><b>Tài khoảng</b></td>
              <td><b>Ngày tạo</b></td>
              <td><b>địa chỉ</b></td>
              <td><b>Số điện thoại</b></td>
              <td><b>Họ và tên</b></td>
              <td><b>Email</b></td>
              <td><b>Giá</b></td>
              <td><b>Status</b></td>
            </thead>
            <tbody>
              <tr class="table-active">
                <td>1</td>
                <td>300$</td>
                <td>15</td>
                <td>7ASSY</td>
                <td>SOS</td>
                <td>SOS</td>
                <td>SOS</td>
                <td>SOS</td>
                <td>SOS</td>
              </tr>
              <tr class="table-active">
                <td>1</td>
                <td>300$</td>
                <td>15</td>
                <td>7ASSY</td>
                <td>SOS</td>
                <td>SOS</td>
                <td>SOS</td>
                <td>SOS</td>
                <td>SOS</td>
              </tr>
              <tr class="table-active">
                <td>1</td>
                <td>300$</td>
                <td>15</td>
                <td>7ASSY</td>
                <td>SOS</td>
                <td>SOS</td>
                <td>SOS</td>
                <td>SOS</td>
                <td>SOS</td>
              </tr>
            </tbody>
          </table>
          <div>
            <a href="/admin/order/detailorder"
              ><button class="btn btn-primary">Chi tiết</button>
            </a>
          </div>
        </div>
      </div>
      <jsp:include page="/views/Admin/Layout/footer.jsp"></jsp:include>
    </div>
  </body>
</html>
