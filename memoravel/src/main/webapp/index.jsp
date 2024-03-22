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
    <link rel="stylesheet" href="./assets/css/index.css" type="text/css"/>
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
  <div
    class="modal fade"
    id="exampleModal"
    tabindex="-1"
    aria-labelledby="exampleModalLabel"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel" style="margin: 0 auto">
            로그인
          </h5>
        </div>
        <div class="modal-body member_body">
          <form action="/memoravel/member">
          <input type="hidden" name="action" value="login"> 
            <div class="member_login_input">
              <input type="text" name="username" placeholder="아이디" />
            </div>
            <div class="member_login_input">
              <input type="password" name="password" placeholder="비밀번호" />
            </div>
            <div class="member_login_btn">
              <input
                class="member_login_btn1"
                type="submit"
                id="btn-login"
                value="로그인"
              />
              <input
                type="button"
                data-bs-dismiss="modal"
                aria-label="Close"
                value="닫기"
                class="member_login_btn2"
              />
            </div>
            <div class="find_password">
              <a href="/forgot-password">아이디 또는 비밀번호를 잊으셨나요?</a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <body>
    <!-- navbar -->
    <%@ include file="/nav.jsp" %>
    <main>
      <section class="wallpaper">
        <div
          id="carouselExampleAutoplaying"
          class="carousel slide"
          data-bs-ride="carousel"
        >
          <div class="carousel-indicators">
            <button
              type="button"
              data-bs-target="#carouselExampleIndicators"
              data-bs-slide-to="0"
              class="active"
              aria-current="true"
              aria-label="Slide 1"
            ></button>
            <button
              type="button"
              data-bs-target="#carouselExampleIndicators"
              data-bs-slide-to="1"
              aria-label="Slide 2"
            ></button>
            <button
              type="button"
              data-bs-target="#carouselExampleIndicators"
              data-bs-slide-to="2"
              aria-label="Slide 3"
            ></button>
          </div>
          <div class="carousel-inner">
            <div
              class="carousel-item active"
              data-bs-interval="4000"
              style="position: relative"
            >
              <img
                src="./assets/img/wallpaper/airplane_sunset.png"
                class="d-block w-100"
                alt="..."
              />
              <div class="slideText">
                <p>남는건 사진밖에 없어요.</p>
                <p><b class="MEMORAVEL">MEMORAVEL </b>으로 여행계획을 세우고</p>
                <p>잊히지 않을 기억을 남겨 보세요.</p>
                <button
                  type="button"
                  class="slideBtn"
                  onClick="location.href='/triplist.html'"
                >
                  시작하기
                </button>
              </div>
            </div>
            <div class="carousel-item" data-bs-interval="4000">
              <img
                src="./assets/img/wallpaper/toy.png"
                class="d-block w-100"
                alt="..."
              />
              <div class="slideText">
                <p>이웃들의 <b class="MEMORAVEL">MEMORY</b>를 들여다 보고</p>
                <p>다음 여행에 대한 힌트를 얻으세요.</p>
                <button
                  type="button"
                  class="slideBtn"
                  onClick="location.href='/triplist.html'"
                >
                  시작하기
                </button>
              </div>
            </div>
            <div class="carousel-item" data-bs-interval="4000">
              <img
                src="./assets/img/wallpaper/4k.png"
                class="d-block w-100"
                alt="..."
              />
              <div class="slideText">
                <p>나의 <b class="MEMORAVEL">MEMORY</b>를 이웃들과 공유하고</p>
                <p>instagram에 게시하세요.</p>
                <button
                  type="button"
                  class="slideBtn"
                  onClick="location.href='/triplist.html'"
                >
                  시작하기
                </button>
              </div>
            </div>
          </div>
          <button
            class="carousel-control-prev"
            type="button"
            data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button
            class="carousel-control-next"
            type="button"
            data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </section>
      <section class="container">
        <div class="writedown">
          <p class="titletext">
            <b class="MEMORAVEL">여행 기록</b>을 바로 작성해보세요!
          </p>
          <form action="" class="selectoption">
            <div class="selectDest">
              <img
                src="./assets/img/map.png"
                alt=""
                width="25px"
                height="25px"
                style="margin-top: 10px"
              />
              <select
                name=""
                id="dest"
                style="border: none; margin-left: 10px; color: #545454"
              >
                <option value="" selected>여행지가 어디었나요?</option>
                <option value="">서울</option>
                <option value="">경기도</option>
                <option value="">강원도</option>
                <option value="">충청도</option>
                <option value="">전라도</option>
                <option value="">경상도</option>
                <option value="">제주도</option>
              </select>
            </div>
            <div class="selectDate">
              <img
                src="./assets/img/calendar.png"
                alt=""
                width="25px"
                height="25px"
                style="margin-top: 10px"
              />
              <input
                type="text"
                placeholder="여행일 선택"
                onfocus="(this.type='date')"
                onblur="(this.type='text')"
                style="border: none; margin-left: 10px; color: #545454"
              />
            </div>
            <div class="selectCategory">
              <img
                src="./assets/img/destination.png"
                alt=""
                width="25px"
                height="25px"
                style="margin-top: 10px"
              />
              <select
                name=""
                id=""
                style="border: none; margin-left: 10px; color: #545454"
              >
                <option value="" selected>관광지 타입 선택</option>
                <option value="">전체</option>
                <option value="">숙박</option>
                <option value="">식당</option>
                <option value="">쇼핑</option>
              </select>
            </div>
            <button
              type="button"
              class="selectBtn"
              onClick="location.href='mkplan.html'"
            >
              <img src="./assets/img/pencil.png" alt="" height="15px" />
              <span>여행 기록 작성하기</span>
            </button>
          </form>
        </div>
        <div class="cardshow">
          <p class="titletext" style="margin-bottom: 40px">추천 여행지</p>
          <div class="row">
            <div class="col card1">
              <p class="trip_title">경주</p>
              <button
                type="button"
                class="recommendBtn"
                onClick="location.href='/triplist.html'"
              >
                보러가기
              </button>
            </div>
            <div class="col card1">
              <p class="trip_title">대전</p>
              <button
                type="button"
                class="recommendBtn"
                onClick="location.href='/triplist.html'"
              >
                보러가기
              </button>
            </div>
            <div class="col card1">
              <p class="trip_title">전주</p>
              <button
                type="button"
                class="recommendBtn"
                onClick="location.href='/triplist.html'"
              >
                보러가기
              </button>
            </div>
            <div class="col card1">
              <p class="trip_title">부산</p>
              <button
                type="button"
                class="recommendBtn"
                onClick="location.href='/triplist.html'"
              >
                보러가기
              </button>
            </div>
          </div>
        </div>
      </section>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
