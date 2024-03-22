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
<link rel="stylesheet" href="./assets/css/signin.css" type="text/css" />
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
	<main class="container">
		<div class="login-box">
			<p class="title">회원가입</p>
			<form action="/memoravel/member" method="post">
			<input type="hidden" name="action" value="signin"> 
				<ul>
					<li><label for="user-name">이름</label><input type="text"
						id="user-name" name="name"/></li>
					<li><label for="user-id">아이디</label><input type="text"
						id="user-id" name="id" /></li>
					<li><label for="user-pwd">비밀번호</label><input type="password"
						id="user-pwd" name="password" /></li>
					<li><label for="user-pwd-confirm">비밀번호 확인</label><input
						type="password" id="user-pwd-confirm"/></li>
					<li><label for="user-email">이메일</label><input type="email"
						id="user-email" name="email" /></li>
					<li><input type="submit" value="회원가입" style="width: 150px;"/></li>
				</ul>
			</form>
		</div>
	</main>
</body>
</html>
