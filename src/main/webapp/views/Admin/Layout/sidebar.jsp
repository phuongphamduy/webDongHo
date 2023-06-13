<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jstl/core_rt"
prefix="c"%> <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<html lang="en">
  <!DOCTYPE html>
  <html>
    <head>
      <meta charset="UTF-8" />
      <link
        rel="stylesheet"
        href="path/to/font-awesome/css/font-awesome.min.css"
      />
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
      <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous"
      />
      <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"
      ></script>
      <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"
      ></script>
      <script
        src="https://kit.fontawesome.com/5a854a2686.js"
        crossorigin="anonymous"
      ></script>

      <link rel="stylesheet" href="../../views/css/sidebar.css" />

      <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
      />
      <script src="../../../views/js/sidebar.js"></script>

      <title>Insert title here</title>
    </head>
    <body>
      <div class="w3-sidebar w3-blue-gray w3-bar-block" style="width: 15%">
        <h3
          class="w3-bar-item"
          style="
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80px;
          "
        >
          <i class="fa-solid fa-user-secret" style="margin: 10px"></i>
          Admin
        </h3>
        <hr />
        <!-- <a href="#" class="w3-bar-item w3-button">Dashboard</a> -->
        <p class="title-quanly">Quản lý</p>
        <hr />

        <a href="/admin/product/formproduct" class="w3-bar-item w3-button"
          ><i class="fa-solid fa-briefcase"></i> Sản phẩm</a
        >

        <div class="w3-dropdown-click">
          <button
            onclick="myFunction3()"
            class="w3-button"
            style="
              display: flex;
              justify-content: space-between;
              align-items: center;
            "
          >
            <span
              ><i class="fa-solid fa-user" style="margin-right: 5px"></i> Người
              dùng</span
            >
            <span>&#62;</span>
          </button>
          <div id="Demo3" class="w3-dropdown-content w3-bar-block w3-border">
            <p class="title-item">Quản lý người dùng</p>
            <a href="/admin/user/formuser" class="w3-bar-item w3-button"
              >Form người dùng</a
            >
            <a href="/admin/user/listuser" class="w3-bar-item w3-button"
              >Danh sách</a
            >
          </div>
        </div>
        <a href="/admin/form/danhmuc" class="w3-bar-item w3-button"
          ><i class="fa-solid fa-circle-half-stroke"></i> Danh mục</a
        >

        <a href="/admin/order/order" class="w3-bar-item w3-button"
          ><i class="fa-solid fa-file" style="margin-right: 5px"> </i>Đơn
          hàng</a
        >

        <div class="w3-dropdown-click">
          <button
            onclick="myFunction5()"
            class="w3-button"
            style="
              display: flex;
              justify-content: space-between;
              align-items: center;
            "
          >
            <span
              ><i class="fa-solid fa-palette" style="margin-right: 5px"></i
              >Khác</span
            >
            <span>&#62;</span>
          </button>
          <div id="Demo5" class="w3-dropdown-content w3-bar-block w3-border">
            <a href="admin/product/formsize" class="w3-bar-item w3-button"
              >Quản lý size</a
            >
            <a href="#" class="w3-bar-item w3-button">Quản lý màu sắc</a>
            <a href="#" class="w3-bar-item w3-button">Form</a>
          </div>
        </div>
        <hr />
        <div class="w3-dropdown-click">
          <button
            onclick="myFunction7()"
            class="w3-button"
            style="
              display: flex;
              justify-content: space-between;
              align-items: center;
            "
          >
            <span
              ><i class="fa-solid fa-list" style="margin-right: 5px"></i>Thống
              kê</span
            >
            <span>&#62;</span>
          </button>
          <div id="Demo7" class="w3-dropdown-content w3-bar-block w3-border">
            <p class="title-item">Thống kê sản phẩm</p>
            <a href="/admin/thongke/tkproduct" class="w3-bar-item w3-button"
              >Yêu thích</a
            >
            <a href="/admin/thongke/tkorder" class="w3-bar-item w3-button"
              >Đơn hàng</a
            >
          </div>
        </div>
        <hr />
        <div>
          <img src />
        </div>
      </div>

      <!-- Page Content -->
      <div style="margin-left: 15%">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="/">
              <img
                src="https://hinhanh.webvua.com/images/logo/4752/resize/2035342283933.png"
                alt="Logo"
                height="50px"
                width="100%"
                style="object-fit: cover"
              />
            </a>
            <button
              class="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li
                  class="nav-item"
                  style="
                    font-size: 1.2rem;
                    font-weight: 500;
                    margin-right: 20px;
                  "
                >
                  <a class="nav-link active" aria-current="page" href="/"
                    >Trang chủ</a
                  >
                </li>
                <li>
                  <form class="d-flex">
                    <jsp:include
                      page="/views/Admin/Layout/search.jsp"
                    ></jsp:include>
                  </form>
                </li>
              </ul>
              <form class="d-flex">
                <div class="block-icon-header">
                  <div style="text-decoration: none">
                    <a href="#">
                      <span class="icon-header">
                        <i class="fa-solid fa-bell"></i>
                      </span>
                      <span class="text-icon-header" style="color: #333"
                        >12</span
                      >
                    </a>
                  </div>
                </div>
                <div class="block-icon-header">
                  <div style="text-decoration: none">
                    <a href="#">
                      <span class="icon-header">
                        <i class="fa-solid fa-message"></i>
                      </span>
                      <span class="text-icon-header" style="color: #333"
                        >17</span
                      >
                    </a>
                  </div>
                </div>
                <div class="block-icon-header">
                  <div style="text-decoration: none">
                    <a href="#">
                      <span class="icon-header">
                        <i class="fa-solid fa-earth-americas"></i>
                      </span>
                      <span class="text-icon-header" style="color: #333"
                        >29</span
                      >
                    </a>
                  </div>
                </div>
                <span
                  style="
                    margin-right: 20px;
                    display: flex;
                    align-items: center;
                    color: #7a7a7a;
                    font-size: 1.2rem;
                    font-weight: 400;
                  "
                  >Tuấn Lê</span
                >
                <img
                  src="https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png"
                  height="40px"
                  width="40px"
                />
              </form>
            </div>
          </div>
        </nav>
      </div>
    </body>
  </html>
</html>
