<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 쓰기</title>
	<link rel="icon" href="../main_img/kimsabu_favicon.ico"/>
	<link rel="stylesheet" href="../notice_css/style.css">
	<script src="https://kit.fontawesome.com/b2c78db8f3.js" crossorigin="anonymous"></script>
	<script type="text/javascript"  src="js/mainpage.js" defer></script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<body>

<div class="container">
		<nav class="navbar">
			<div class="navbar_logo">
				<a href="../mainpage.html"><img src="../main_img/kimsabu_log.png"></a>
			</div>
			
			<ul class="navbar_menu">
				<li class="nav_li"><a href="#">병원소개</a>
					<ul class="subnav">
						<li><a href="#">병원장</a></li>
						<li><a href="#">돌담병원</a></li>
						<li><a href="#">오시는길</a></li> 
					</ul>
				</li>
				
				<li class="nav_li"><a href="#">진료안내</a>
					<ul class="subnav">
						<li><a href="#">응급의학과</a></li>
						<li><a href="#">흉부외과</a></li>
						<li><a href="#">정형외과</a></li> 
					</ul>
				</li>
				
				<li class="nav_li"><a href="../notice/List.html">공지사항</a>
					<ul class="subnav">
						<li><a href="../notice/List.html">병원소식</a></li>
						<li><a href="../notice/list.jsp">고객의 소리</a></li>
					</ul>
				</li>
				
				<li class="nav_li"><a href="#">로그인</a>
					<ul class="subnav">
						<li><a href="../login/loginlogin.jsp">로그인</a></li>
						<li><a href="../login/loginregister.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			
			<ul class="navbar_icons">
				<li><i class="fa-brands fa-facebook-square"></i></li>
				<li><i class="fa-brands fa-youtube"></i></li>
			</ul>
			
			<a href="#" class="navbar_toogleBtn">
				<i class="fa-solid fa-bars"></i>
			</a>
			
		</nav>
			
			<div class="main_text">
				<h4> 나는 내가 아는 모든 걸 총동원해서
				<br/> 이 환자한테 필요한 의사가 되려고 노력중이다.</h4>
			</div>
		</div>

	<form action="insertOK.jsp" method="post" >
		<table class="voice"  style="font-size: 12px;"
		">
			<tr>
				<th colspan="2"  >고객의 소리</th>
			</tr>
			<tr>
				<th width="100">
					<label for="name">이름</label>
				</th>
				<td width="500">
					<input id="name" type="text" name="name"/>
				</td>
			</tr>
			<tr>
				<th>
					<label for="password">비밀번호</label>
				</th>
				<td>
					<input id="password" type="password" name="password"/>
				</td>
			</tr>
			<tr>
				<th style="padding-right: 5px;">
					<label for="memo">메모</label>
				</th>
				<td>
					<textarea id="memo" rows="10" name="memo" style="resize: none; width: 98%;"></textarea>
				</td>
			</tr>
			<tr>
				<td class="voice2" colspan="2" align="center" style="padding: 25px;">
					<input type="submit" value="글남기기"/>
					<input type="reset" value="다시쓰기"/>
					<input type="button" value="돌아가기" onclick="history.back()"/>
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>"/>
		
	</form>
	
			<footer class="footer">
			<div class="footer1">
			
				<a href="../mainpage.html"><img src="../main_img/kimsabu_log.png" width=180px></a>
				
			</div>
			<div class="footer2">
			<h5>돌담병원 주소</h5>
			서울 종로구 삼일대로 385-1 5층
			<h5>돌담병원 원무과</h5>
			1588-5858
			<h5>돌담병원 진료예약</h5>
			1523-1523
			
			</div>
			<div class="footer3">
				<a href="https://www.instagram.com/explore/tags/%EB%82%AD%EB%A7%8C%EB%8B%A5%ED%84%B0%EA%B9%80%EC%82%AC%EB%B6%80/">
					<img src="../main_img/footer_insta.png" width=30px>
				</a>
				<a href="https://www.facebook.com/dramaviewagain/">
					<img src="../main_img/footer_facebook.png" width=30px>
				</a>
				<a href="https://youtu.be/xR3VFzylmTw">
					<img src="../main_img/footer_youtube.png" width=30px>
				</a>
			</div>
		</footer>

</body>
</html>





