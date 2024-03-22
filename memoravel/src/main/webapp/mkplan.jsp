<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
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
  <body>
    <!-- navbar -->
    <%@ include file="/nav.jsp" %>
    <main>
      <section class="container">
        <div class="writedown">
          <p class="titletext">
            <b class="MEMORAVEL">여행 기록</b>을 바로 작성해보세요!
          </p>
          <div class="SelectedDate">
            <img src="./assets/img/calendar.png" alt="" width="25px" height="25px" />
            <p class="date">2024년 3월 15일</p>
          </div>
          <form action="" class="selectoption" onsubmit="GetList(event)">
            <div class="selectDest">
              <select
                name=""
                id="dest"
                style="border: none; margin-left: 10px; color: #545454"
              >
                <option value="" selected>여행지</option>
                <option value="">서울</option>
                <option value="">경기도</option>
                <option value="">강원도</option>
                <option value="">충청도</option>
                <option value="">전라도</option>
                <option value="">경상도</option>
                <option value="">제주도</option>
              </select>
            </div>
            <div class="selectCategory">
              <select
                name=""
                id="category"
                style="border: none; margin-left: 10px; color: #545454"
              >
                <option value="" selected>관광지 타입</option>
                <option value="">전체</option>
                <option value="">숙박</option>
                <option value="">식당</option>
                <option value="">쇼핑</option>
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
        </div>
      </section>
      <section class="container">
        <div class="kakaomap">
          <div id="map" style="width: 600px; height: 500px"></div>
          <script
            type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f7bff4e8045801a595a9f8f93c55fa30"
          ></script>
          <script>
            var container = document.getElementById("map");
            var options = {
              center: new kakao.maps.LatLng(33.450701, 126.570667),
              level: 3,
            };

            var map = new kakao.maps.Map(container, options);
          </script>
          <div class="list">
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
        </div>
        <div class="accordion accordion-flush" id="accordionFlushExample">
          <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingOne">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#flush-collapseOne"
                aria-expanded="false"
                aria-controls="flush-collapseOne"
              >
                금수복국(해운대본점)
              </button>
            </h2>
            <div
              id="flush-collapseOne"
              class="accordion-collapse collapse"
              aria-labelledby="flush-headingOne"
              data-bs-parent="#accordionFlushExample"
            >
              <div class="accordion-body">
                <input type="text" name="" id="" class="wirtein" />
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingOne">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#data2"
                aria-expanded="false"
                aria-controls="data2"
              >
                베니키아 프리미어 해운대 호텔
              </button>
            </h2>
            <div
              id="data2"
              class="accordion-collapse collapse"
              aria-labelledby="flush-headingOne"
              data-bs-parent="#accordionFlushExample"
            >
              <div class="accordion-body">
                <input type="text" name="" id="" class="wirtein" />
              </div>
            </div>
          </div>
        </div>
        <div class="submitWrite">
          <button
            type="submit"
            class="selectBtn"
            onclick="alert('저장되었습니다.')"
          >
            <img src="./assets/img/pencil.png" alt="" height="15px" />
            <span>여행 기록 작성하기</span>
          </button>
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
    <script type="text/javascript" src="./assets/js/public_data_api.js"></script>
  </body>
</html>
