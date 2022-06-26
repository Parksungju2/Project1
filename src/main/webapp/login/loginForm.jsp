<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>로그인하세요</title>
<!-- Favicon -->
<link rel="icon" href="../main_img/kimsabu_favicon.ico"/>

<link rel="stylesheet" href="../main_css/loginlogin.css">

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>



	<form name="loginform" action="../login/loginProcess.jsp" method="post">
	<div class="form">
    	<h1 class="heading">LOG IN</h1>
        <input type="text" name="userID" placeholder="email" autocomplete="off" class="email" required>
        <input type="password" name="userPassword" placeholder="password" autocomplete="off" class="password" required>
        <input class="submit-btn" type="submit" value="로그인">
        <a href="./join.jsp" class="link">회원가입</a>
    </div>

    <script src="../js/loginlogin.js"></script>
</form>
</body>
</html>