<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>MEMORAVEL</title>
<link rel="stylesheet" href="./assets/css/update.css" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- navbar -->
	<%@ include file="/nav.jsp"%>
	<main>
		<section class="container">
			<div class="writedown">
				<nav>
					<a href="/memoravel/member?action=mvMypage">나의 MEMORAVEL</a> <a
						href="/memoravel/member?action=mvUpdate"
						style="font-weight: bold;">회원 정보 수정</a>
					<div class="nav-underline"></div>
				</nav>
				<div style="display: flex;display: flex;
	flex-direction: column;
	justify-content: center;">
					<div class="login-box">
						<p class="title">회원 정보 수정</p>
						<form action="/memoravel/member" method="post">
							<input type="hidden" name="action" value="update">
							<ul>
								<li><label for="user-name">이름</label><input type="text"
									id="user-name" name="name" value="${userInfo.name}" readonly/></li>
								<li><label for="user-id">아이디</label><input type="text"
									id="user-id" name="id" value="${userInfo.id}" readonly/></li>
								<li><label for="user-pwd">비밀번호</label><input
									type="password" id="user-pwd" name="password" value="${userInfo.password}"/></li>
								<li><label for="user-pwd-confirm">비밀번호 확인</label><input
									type="password" id="user-pwd-confirm"/></li>
								<li ><label for="user-email">이메일</label><input type="email"
									id="user-email" name="email" value="${userInfo.email}"/></li>
								<li style="display: block;">
									<input type="submit" value="회원 정보 수정" style="width: 150px" />
									<a type="button" class="btn btn-danger" href="/memoravel/member?action=delete&id=${userInfo.id}">회원 탈퇴</a>
								</li>
							</ul>
						</form>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
