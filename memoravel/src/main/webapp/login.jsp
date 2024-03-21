<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MEMORAVEL</title>
    <link rel="stylesheet" href="../css/login.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!-- navbar -->
    <header
      class="navbar navbar-expand-md shadow bg-light navbar-light fixed"
      style="background-color: white !important"
    >
      <div class="container">
        <a class="navbar-brand" href="../html/index.html">
          <img
            src="../img/logo.png"
            alt="Logo"
            height="60"
            class="d-inline-block"
          />
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#collapsibleNavbar"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav ms-auto me-2">
            <div class="navSearch">
              <input
                type="text"
                name=""
                id=""
                class="navSearchText"
                placeholder="관광지를 검색해보세요"
                style="width: 80%"
              />
              <input type="button" class="navSearchBtn" />
            </div>
          </ul>
          <ul class="navbar-nav ms-auto me-2">
            <li class="nav-item">
              <a class="nav-link" href="#">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../html/login.html">회원가입</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../html/mypage.html">마이페이지</a>
            </li>
          </ul>
        </div>
      </div>
    </header>
    <main class="container">
      <div class="login-box">
        <p class="title">회원가입</p>
        <ul>
          <li>
            <label for="user-name">이름</label
            ><input type="text" id="user-name" />
          </li>
          <li>
            <label for="user-id">아이디</label
            ><input type="text" id="user-id" />
          </li>
          <li>
            <label for="user-pwd">비밀번호</label
            ><input type="password" id="user-pwd" />
          </li>
          <li>
            <label for="user-pwd-confirm">비밀번호 확인</label
            ><input type="password" id="user-pwd-confirm" />
          </li>
          <li>
            <label for="user-email">이메일</label
            ><input type="email" id="user-email" />
          </li>
        </ul>
        <input type="submit" value="회원가입" onclick="alert('가입되었습니다.');
        location.href='../html/index.html'"" />
      </div>
    </main>
  </body>
</html>
