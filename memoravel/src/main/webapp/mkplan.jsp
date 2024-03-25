<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>MEMORAVEL</title>
<link rel="stylesheet" href="./assets/css/mkplan.css" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet" />
</head>
<body>
	<!-- navbar -->
	<%@ include file="/nav.jsp"%>
	<main>
		<section class="container">
			<div class="writedown">
				<p class="titletext">
					<b class="MEMORAVEL">여행 기록</b>을 바로 작성해보세요!
				</p>
				<div class="SelectedDate">
					<img src="./assets/img/calendar.png" alt="" width="25px"
						height="25px" />
					<p class="date">2024년 3월 15일</p>
				</div>
				<form onsubmit="getAttractionList(event)">
					<div class="selectDest">
						<select name="dest" id="dest"
							style="border: none; margin-left: 10px; color: #545454">
							<option value="" ${empty param.dest?"selected":""}>여행지</option>
							<option value="서울" ${param.dest=="서울"?"selected":""}>서울</option>
							<option value="경기도" ${param.dest eq '경기도'?"selected":""}>경기도</option>
							<option value="강원도" ${param.dest=="강원도"?"selected":""}>강원도</option>
							<option value="충청북도" ${param.dest=='충청북도'?"selected":""}>충청북도</option>
							<option value="충청남도" ${param.dest=="충청남도"?"selected":""}>충청남도</option>
							<option value="전라북도" ${param.dest=="전라북도"?"selected":""}>전라북도</option>
							<option value="전라남도" ${param.dest=="전라남도"?"selected":""}>전라남도</option>
							<option value="경상북도" ${param.dest=="경상북도"?"selected":""}>경상북도</option>
							<option value="경상남도" ${param.dest=="경상남도"?"selected":""}>경상남도</option>
							<option value="제주도" ${param.dest=="제주도"?"selected":""}>제주도</option>
							<option value="인천" ${param.dest=="인천"?"selected":""}>인천</option>
							<option value="대전" ${param.dest=="대전"?"selected":""}>대전</option>
							<option value="대구" ${param.dest=="대구"?"selected":""}>대구</option>
							<option value="광주" ${param.dest=="광주"?"selected":""}>광주</option>
							<option value="부산" ${param.dest=="부산"?"selected":""}>부산</option>
							<option value="울산" ${param.dest=="울산"?"selected":""}>울산</option>
							<option value="세종특별자치시" ${param.dest=="세종특별자치시"?"selected":""}>세종</option>
						</select>
					</div>
					<div class="selectCategory">
						<select name="contentType" id="category"
							style="border: none; margin-left: 10px; color: #545454">
							<option value="0">관광지 타입</option>
							<option value="0" ${param.contentType==0?"selected":""}>전체</option>
							<option value="12" ${param.contentType==12?"selected":""}>관광지</option>
							<option value="14" ${param.contentType==14?"selected":""}>문화시설</option>
							<option value="15" ${param.contentType==15?"selected":""}>축제/공연/행사</option>
							<option value="25" ${param.contentType==25?"selected":""}>여행코스</option>
							<option value="28" ${param.contentType==28?"selected":""}>레포츠</option>
							<option value="32" ${param.contentType==32?"selected":""}>숙박</option>
							<option value="39" ${param.contentType==39?"selected":""}>음식점</option>
							<option value="38" ${param.contentType==38?"selected":""}>쇼핑</option>
						</select>
					</div>
					<div class="selectSearch">
						<input type="text" name="keyword" id="text"
							class="selectSearchText" placeholder="관광지를 검색해보세요" />
					</div>
					<input type="submit" class="selectBtn" value="검색"/>
				</form>
			</div>
		</section>
		<section class="container">
			<div class="kakaomap">
				<div id="map" style="width: 600px; height: 500px"></div>

				<div class="list">
					<div class="trip-info">
						<c:choose>
							<c:when test="${empty attractionList}">
								<div class="trip-info-line">
									<div class="trip-info-div">
										<div class="trip-info-text">
											<p>검색 조건과 일치하는 관광지가 없습니다.</p>
										</div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<c:forEach var="attraction" items="${attractionList}">
									<div class="trip-info-line">
										<div class="trip-info-div">
											<c:choose>
												<c:when test="${attraction.first_image.equals('')}">
													<img src="${attraction.first_image2}" alt="이미지 없음"
														width="100px" height="100px" />
												</c:when>
												<c:otherwise>
													<img src="${attraction.first_image}" alt="" width="100px"
														height="100px" />
												</c:otherwise>
											</c:choose>
											<div class="trip-info-text">
												<h5>${attraction.title}</h5>
												<p>${attraction.addr1}</p>
											</div>
										</div>
										<div>
											<button class="trip-info-btn">
												<img src="./assets/img/plus.png" alt="" width="30px"
													height="30px" />
											</button>
											<button class="trip-info-btn"
												onClick="location.href='/memoravel/search?action=detail&id=${attraction.content_id}'">
												<img src="./assets/img/arrow-right.png" alt="" width="40px"
													height="40px" />
											</button>
										</div>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="accordion accordion-flush" id="accordionFlushExample">
				<div class="accordion-item">
					<h2 class="accordion-header" id="flush-headingOne">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
							aria-expanded="false" aria-controls="flush-collapseOne">금수복국(해운대본점)</button>
					</h2>
					<div id="flush-collapseOne" class="accordion-collapse collapse"
						aria-labelledby="flush-headingOne"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<input type="text" name="" id="" class="wirtein" />
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="flush-headingOne">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#data2"
							aria-expanded="false" aria-controls="data2">베니키아 프리미어
							해운대 호텔</button>
					</h2>
					<div id="data2" class="accordion-collapse collapse"
						aria-labelledby="flush-headingOne"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<input type="text" name="" id="" class="wirtein" />
						</div>
					</div>
				</div>
			</div>
			<div class="submitWrite">
				<button type="submit" class="selectBtn" onclick="alert('저장되었습니다.')">
					<img src="./assets/img/pencil.png" alt="" height="15px" /> <span>여행
						기록 작성하기</span>
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
						Business registration number: 120-00-12345 <br /> hosting
						services: MEMORAVEL Corporation | Travel Business Report Number:
						1234-56789 <br /> 대전광역시 유성구 덕명동 124 <br /> 대전광역시 유성구 덕명동 124
					</p>
				</div>
			</div>
			<hr />
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-6 col-xs-12">
					<p class="copyright-text">Copyright &copy; 2022 All Rights
						Reserved by.</p>
				</div>
			</div>
		</div>
	</footer>
	<script src="${pageContext.request.contextPath}/assets/js/search.js"></script>
	<script type="text/javascript" src="./assets/js/public_data_api.js"></script>
</body>
</html>
