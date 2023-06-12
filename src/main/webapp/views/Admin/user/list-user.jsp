<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jstl/core_rt"
prefix="c"%> <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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
              <td><b>Tài khoản</b></td>
              <td><b>Mật khẩu</b></td>
              <td><b>Fullname</b></td>
              <td><b>Email</b></td>
              <td><b>Photo</b></td>
              <td><b>Action</b></td>
            </thead>
            <tbody style="text-align: center">
            <c:forEach items="${userItems}" var="acc">
              <tr class="table-active">
                <td>${acc.username}</td>
                <td>${acc.password}</td>
                <td>${acc.fullname}</td>
                <td>${acc.email}</td>
                <td><img src="../../image/category/${acc.photo}" height="50px" width="70px" alt=""></td>
                <td>
                  <button href="/admin/user/delete?username=${acc.username}  class="btn btn-danger">Xóa</button>
                </td>
              </tr>
              	</c:forEach>
           
            </tbody>
          </table>
        </div>
      </div>
      <jsp:include page="/views/Admin/Layout/footer.jsp"></jsp:include>
    </div>
  </body>
</html>
