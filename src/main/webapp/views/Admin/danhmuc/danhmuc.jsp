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
      <span style="font-size: 40px">Form danh mục</span>

      <div class="card">
        <div class="card-header">
          <h4>Cập nhật</h4>
        </div>
        <div class="card-body">
          <form class="row g-3">
            
            <div class="col-md-6">
              <label for="id" class="form-label"><b>Id</b></label>
              <input class="form-control" type="text" id="id">
            </div>
            <div class="col-md-6">
              <label for="sanpham" class="form-label"><b>Thể loại</b></label>
              <select id="sanpham" class="form-select">
                <option selected>Apple</option>
                <option>Xiaomi</option>
                <option>Omega</option>
                <option>Koi</option>
              </select>
            </div>
              <div class="col-md-12">
                <label for="img" class="form-label"><b>Hình</b></label>
                <input class="form-control" type="file" id="img">
              </div>
              
            
            </div>
            <div class="col-12" style="padding: 10px;">
              <button type="submit" class="btn btn-primary">Lưu</button>
              
            </div>
          </form>
        </div>
        <jsp:include page="/views/Admin/Layout/footer.jsp"></jsp:include>
      </div>
    </div>

    

  </body>
</html>
