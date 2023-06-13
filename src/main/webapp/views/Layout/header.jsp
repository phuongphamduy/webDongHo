<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jstl/core_rt"
prefix="c"%> <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="../views/css/bootstrap.min.css" />
    <script src="./views/js/jquery.min.js"></script>
    <script src="./views/js/bootstrap.min.js"></script>
    <script src="./views/js/slick.min.js"></script>
    <link rel="stylesheet" href="./views/css/slick.css" />
    <link rel="stylesheet" href="./views/css/slick-theme.css" />
    <link rel="stylesheet" href="../views/css/main.css" />
    <script
      src="https://kit.fontawesome.com/5a854a2686.js"
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <header class="row align-item">
      <div class="col-4 m-auto">
        <c:if test="${sessionScope.user == null }">
          <a href="/form/${link}" class="login">
            <i class="fa-solid fa-user"></i> ${sign }
          </a>
        </c:if>
        <c:if test="${sessionScope.user != null }">
          <span class="login">
            <i class="fa-solid fa-user"></i> Tài khoản
            <i class="fa-solid fa-chevron-down"></i>
            <ul class="subnav-login">
              <li class="subnav-login-item">
                <a href="/hoadon" class="subnav-login-link">Hóa đơn</a>
              </li>
              <c:if test="${sessionScope.user.admin }">
                <li class="subnav-login-item">
                  <a href="/admin/index" class="subnav-login-link"
                    >Trang quản trị</a
                  >
                </li>
              </c:if>
              <li class="subnav-login-item">
                <a href="/form/${link }" class="subnav-login-link">${sign }</a>
              </li>
            </ul>
          </span>
        </c:if>

        <span class="contact-number"> Hotline <span>09335425686</span> </span>
      </div>
      <div class="col-3 text-center">
        <img src="../views/image/logo.png" class="logo" alt="" />
      </div>
      <div class="col-5 d-flex align-items-center justify-content-end">
        <div class="header-search">
          <p class="header-search-text">
            <i class="fa-solid fa-magnifying-glass"></i>Tìm kiếm
          </p>
          <form action="" class="header-search-form">
            <div class="input-group mb-3" style="width: 250px">
              <input
                type="text"
                class="form-control"
                placeholder="Tìm kiếm"
                aria-label="Recipient's username"
                aria-describedby="button-addon2"
              />
              <div class="input-group-append">
                <button
                  class="btn btn-outline-secondary"
                  type="button"
                  id="button-addon2"
                >
                  <i class="fa-solid fa-magnifying-glass"></i>
                </button>
              </div>
            </div>
          </form>
        </div>

        <div class="header-cart" style="position: relative">
          <a href="/cart" class="header-cart-text">
            <div style="font-weight: 500; font-size: 1.5rem">
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <span
              class="header-cart-qty"
              style="
                position: absolute;
                top: -10px;
                right: -15px;
                background-color: #ff6a6a;
                color: #fff;
                border: none;
                border-radius: 16px;
                width: 25px;
                height: 18px;
                display: flex;
                text-align: center;
                align-items: center;
                justify-content: center;
              "
            >
              ${count }
            </span>
          </a>
        </div>
      </div>
    </header>
  </body>
</html>
