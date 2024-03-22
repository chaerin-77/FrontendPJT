<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!-- navbar -->
<header
	class="navbar navbar-expand-md shadow bg-light navbar-light fixed-top"
	style="background-color: white !important">
	<div class="container">
		<a class="navbar-brand" href="/memoravel"> <img
			src="./assets/img/logo.png" alt="Logo" height="60"
			class="d-inline-block" />
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav ms-auto me-2">
				<div class="navSearch">
					<input type="text" name="" id="" class="navSearchText"
						placeholder="관광지를 검색해보세요" style="width: 80%" /> <input
						type="button" class="navSearchBtn" />
				</div>
			</ul>
			<ul class="navbar-nav ms-auto me-2">
				<c:choose>
					<c:when test="${empty userInfo}">
						<li class="nav-item"><a class="nav-link" type="button"
							data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="/login.html">회원가입</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="nav-item">${userInfo.id}님접속중</li>
						<li class="nav-item"><a class="nav-link" href="/mypage.html">로그아웃</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/mypage.html">마이페이지</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</header>