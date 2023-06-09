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
      <span style="font-size: 40px">Form Sản phẩm</span>

      <div class="card">
        <div class="card-header">
          <h4>Cập nhật</h4>
        </div>
        <div class="card-body">
          <form class="row g-3">
            <div class="col-md-6">
              <label for="name" class="form-label"><b>Tên sản phẩm</b></label>
              <input
                type="text"
                class="form-control"
                id="name"
              />
            </div>
            <div class="col-md-6">
              <label for="xuatxu" class="form-label"><b>Giảm giá</b></label>
              <input
                type="text"
                class="form-control"
                id="xuatxu"
              />
            </div>
            <div class="col-md-6">
                <label for="gia" class="form-label"><b>Giá sản phẩm</b></label>
                <input
                  type="number"
                  class="form-control"
                  id="gia"
                />
              </div>
              <div class="col-md-6">
                <label for="chatlieu" class="form-label"><b>Loại</b></label>
                <input
                  type="text"
                  class="form-control"
                  id="chatlieu"
                />
              </div>
              <div class="col-md-6">
                <label for="formFile" class="form-label"><b>Chọn hình</b></label>
                <input class="form-control" type="file" id="formFile">
              </div>
              
              <div class="col-md-6">
                <label for="date" class="form-label"><b>Ngày bán</b></label>
                <input
                  type="date"
                  class="form-control"
                  id="date"
                />
              </div>
             
            </div>
            <div class="col-12" style="padding: 10px;">
              <button type="submit" class="btn btn-primary">Lưu</button>
              <button type="submit" class="btn btn-danger">Làm mới</button>
              <button type="submit" class="btn btn-warning">Danh sách</button>
            </div>
          </form>
        </div>
      </div>
      
    </div>
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
              <td><b>Tên sản phẩm</b></td>
              <td><b>Giá</b></td>
              <td><b>Giảm giá</b></td>
              <td><b>Loại</b></td>
              <td><b>Hình</b></td>
              <td><b>Ngày</b></td>
              <td><b>Action</b></td>
            </thead>
            <tbody style="text-align: center">
              <tr class="table-active">
                <td>Iphone12</td>
                <td>29999999</td>
                <td>30%</td>
                <td>Diamon</td>
                <td>img</td>
                <td>12/1/2020</td>
                <td>
                  <button class="btn btn-danger">Xóa</button>
                </td>
              </tr>
              <tr>
                <td>Iphone12</td>
                <td>29999999</td>
                <td>30%</td>
                <td>Diamon</td>
                <td>img</td>
                <td>12/1/2020</td>
                <td>
                  <button class="btn btn-danger">Xóa</button>
                </td>
              </tr>
              <tr class="table-active">
                <td>Iphone12</td>
                <td>29999999</td>
                <td>30%</td>
                <td>Diamon</td>
                <td>img</td>
                <td>12/1/2020</td>
                <td>
                  <button class="btn btn-danger">Xóa</button>
                </td>
              </tr>
              <tr>
                <td>Iphone12</td>
                <td>29999999</td>
                <td>30%</td>
                <td>Diamon</td>
                <td>img</td>
                <td>12/1/2020</td>
                <td>
                  <button class="btn btn-danger">Xóa</button>
                </td>
              </tr>
              <tr class="table-active">
                <td>Iphone12</td>
                <td>29999999</td>
                <td>30%</td>
                <td>Diamon</td>
                <td>img</td>
                <td>12/1/2020</td>
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
