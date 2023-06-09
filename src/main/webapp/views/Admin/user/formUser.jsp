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
      <span style="font-size: 40px">Form người dùng</span>

      <div class="card">
        <div class="card-header">
          <h4>Cập nhật</h4>
        </div>
        <div class="card-body">
          <form class="row g-3">
            <div class="col-md-6">
              <label for="name" class="form-label"><b>tài khoảng</b></label>
              <input
                type="text"
                class="form-control"
                id="name"
                placeholder="vd: nguyễn văn A"
              />
            </div>
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label"><b>Email</b></label>
              <input
                type="email"
                class="form-control"
                id="inputEmail4"
                placeholder="nguyenvana@gmail.com"
              />
            </div>
            <div class="col-md-6">
              <label for="inputPassword3" class="form-label"
                ><b>Password</b></label
              >
              <input type="text" class="form-control" id="inputPassword3" />
            </div>
            <div class="col-md-6">
              <label for="hoten" class="form-label"><b>Họ tên</b></label>
              <input type="text" class="form-control" id="hoten" />
            </div>

            <div class="col-md-12">
              <label for="hinh" class="form-label"><b>Hình</b></label>
              <input type="file" class="form-control" id="hinh" />
            </div>
            <div class="col-3">
              <label class="form-check-label" for="gridCheck">
                <b>Activated</b>
              </label>
              <div class="form-check">
                <label for="true">True</label>
                <input class="form-check-input" type="checkbox" id="true" />
              </div>
              <div class="form-check">
                <label for="false">False</label>
                <input class="form-check-input" type="checkbox" id="false" />
              </div>
            </div>

            <div class="col-3">
              <label class="form-check-label" for="gridCheck">
                <b>Giới tính</b>
              </label>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" id="nam" />
                <label for="nam">Nam</label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" id="nu" />
                <label for="nu">Nữ</label>
              </div>
            </div>
            <div class="col-12">
              <button type="submit" class="btn btn-primary">Lưu</button>
              <button type="submit" class="btn btn-danger">Làm mới</button>
              <button type="submit" class="btn btn-warning">Danh sách</button>
            </div>
          </form>
        </div>
      </div>
      <jsp:include page="/views/Admin/Layout/footer.jsp"></jsp:include>
    </div>
  </body>
</html>
