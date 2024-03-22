<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MEMORAVEL</title>
    <link rel="stylesheet" href="./assets/css/triplist.css" type="text/css"/>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>
    <!-- navbar -->
    <header
      class="navbar navbar-expand-md shadow bg-light navbar-light fixed-top"
      style="background-color: white !important"
    >
      <div class="container">
        <a class="navbar-brand" href="/index.html">
          <img
            src="./assets/img/logo.png"
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
              <a
                class="nav-link"
                type="button"
                data-bs-toggle="modal"
                data-bs-target="#exampleModal"
                >로그인</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/login.html">회원가입</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/mypage.html">마이페이지</a>
            </li>
          </ul>
        </div>
      </div>
    </header>
    <main class="container">
      <div class="triplist">
        <p class="titletext">지역별 관광 정보</p>
        <form onsubmit="GetList(event)" class="selectoption">
          <div class="selectDest">
            <select
              name=""
              id="dest"
              style="border: none; margin-left: 10px; color: #545454"
            >
              <option value="" selected>여행지</option>
              <option value="서울">서울</option>
              <option value="경기">경기도</option>
              <option value="강원">강원도</option>
              <option value="충청">충청도</option>
              <option value="전라">전라도</option>
              <option value="경상">경상도</option>
              <option value="제주">제주도</option>
            </select>
          </div>
          <div class="selectCategory">
            <select
              name=""
              id="category"
              style="border: none; margin-left: 10px; color: #545454"
            >
              <option value="12" selected>관광지 타입</option>
              <option value="12">전체</option>
              <option value="32">숙박</option>
              <option value="39">식당</option>
              <option value="38">쇼핑</option>
            </select>
          </div>
          <div class="selectSearch">
            <input
              type="text"
              name=""
              id="text"
              class="selectSearchText"
              placeholder="관광지를 검색해보세요"
            />
          </div>
          <input type="submit" class="selectBtn" value="검색" />
        </form>
        <br />
        <div class="trip-info">
          <div class="trip-info-line">
            <div class="trip-info-div">
              <div class="trip-info-text">
                <p>관광지를 검색해보세요!</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-12">
            <h5>MEMORAVEL</h5>
            <p class="text-justify">
              Business registration number: 120-00-12345 <br />
              hosting services: MEMORAVEL Corporation | Travel Business Report
              Number: 1234-56789 <br />
              대전광역시 유성구 덕명동 124
              <br />
              대전광역시 유성구 덕명동 124
            </p>
          </div>
        </div>
        <hr />
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">
              Copyright &copy; 2022 All Rights Reserved by.
            </p>
          </div>
        </div>
      </div>
    </footer>
    <script type="text/javascript" src="./assets/js/public_data_api.js"></script>
  </body>
</html>
