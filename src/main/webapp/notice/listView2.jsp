<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객</title>
	<link rel="icon" href="../main_img/kimsabu_favicon.ico"/>
	<link rel="stylesheet" href="../notice_css/style.css">
	<script src="https://kit.fontawesome.com/b2c78db8f3.js" crossorigin="anonymous"></script>
	<script type="text/javascript"  src="js/mainpage.js" defer></script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

<style type="text/css">
	span {
		color: black;
		font-weight: bold;
		background-color: dodgerblue;
	}
	

</style>

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
	<fmt:requestEncoding value="UTF-8"/>
	
	<c:set var="view" value="${guestbookList.list}"/>
		<div class="board_wrap"> 
			<div class="board_title">
				<strong>고객의 소리</strong>
				<p style="margin-top: 10px;">고객의 소리에 귀를 기울리겠습니다.</p>
			</div>
			<div align="right" style="font-size: 15px;">
				${guestbookList.totalCount}개(${guestbookList.currentPage} / ${guestbookList.totalPage})
			</div>
		
			<div class="board_list">
				<c:if test="${view.size() == 0}">
					<p style="text-align: center; border:1; text-size:15px; margin-bottom: 50px; margin-top:50px; font-size: 15px;">고객의 소리를 적어주세요.</p>
				</c:if>
			</div>
				
				
				<c:if test="${view.size() != 0}">
					<jsp:useBean id="date" class="java.util.Date"/>
					
					<c:forEach var="vo" items="${view}">
						<table style="font-size: 20px; margin-bottom: 12px;">
							<tr>
								<td>
									${vo.idx}. 
									
									<c:set var="name" value="${fn:replace(vo.name, '<', '&lt;')}"></c:set>
									<c:set var="name" value="${fn:replace(name, '>', '&gt;')}"></c:set>
									
									<c:if test="${category == null || category == '내용'}">
										${name}
									</c:if>
									<c:if test="${category == '이름' || category == '내용+이름'}">
										<c:set var="search" value="<span>${item}</span>"/>
										${fn:replace(name, item, search)}
									</c:if>
									(${vo.ip})님이 
									
									<c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month &&
											date.date == vo.writeDate.date}">
										<fmt:formatDate value="${vo.writeDate}" pattern="a h:mm:ss"/>
									</c:if>
									
									<c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month ||
											date.date != vo.writeDate.date}">
										<fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
									</c:if>
																		
									에 남긴글
									
									<!-- 수정, 삭제 버튼 추가 -->
									<input type="button" value="수정" onclick="location.href='selectByIdx.jsp?idx=${vo.idx}&currentPage=${guestbookList.currentPage}&job=update'"/>
									<input type="button" value="삭제" onclick="location.href='selectByIdx.jsp?idx=${vo.idx}&currentPage=${guestbookList.currentPage}&job=delete'"/>
									
									<br/>
									<c:set var="memo" value="${fn:replace(vo.memo, '<', '&lt;')}"></c:set>
									<c:set var="memo" value="${fn:replace(memo, '>', '&gt;')}"></c:set>
									<c:set var="memo" value="${fn:replace(memo, enter, '<br/>')}"></c:set>
									
									<c:if test="${category == null || category == '이름'}">
										${memo}
									</c:if>
									<c:if test="${category == '내용' || category == '내용+이름'}">
										<c:set var="search" value="<span>${item}</span>"/>
										${fn:replace(memo, item, search)}
									</c:if>
									
								</td>
							</tr>
						</table>
						<hr color="black"/>
					</c:forEach>
					
				</c:if>
				
		
			<div style="text-align: center; border:1; text-size:15px; margin-bottom: 50px; margin-top: 30px;">
				<c:if test="${guestbookList.currentPage > 1}">
					<button class="button button1" type="button" title="첫 페이지로 이동합니다." 
							onclick="location.href='?currentPage=1'">처음</button>
				</c:if>
				
				<c:if test="${guestbookList.currentPage <= 1}">
					<button class="button button2" type="button" title="이미 첫 페이지 입니다." 
							disabled="disabled">처음</button>
				</c:if>
				
				<c:if test="${guestbookList.startPage > 1}">
					<button class="button button1" type="button" title="이전 10 페이지로 이동합니다." 
							onclick="location.href='?currentPage=${guestbookList.startPage - 1}'">
						이전
					</button>
				</c:if>
				
				<c:if test="${guestbookList.startPage <= 1}">
					<button class="button button2" type="button" title="이미 첫 10 페이지 입니다." 
							disabled="disabled">이전</button>
				</c:if>

				<c:forEach var="i" begin="${guestbookList.startPage}" end="${guestbookList.endPage}" step="1">
				
					<c:if test="${guestbookList.currentPage == i}">
						<button class="button button2" type="button" disabled="disabled">${i}</button>
					</c:if>
					
					<c:if test="${guestbookList.currentPage != i}">
						<button class="button button1" type="button" onclick="location.href='?currentPage=${i}'">
							${i}
						</button>
					</c:if>
				
				</c:forEach>

				<c:if test="${guestbookList.endPage < guestbookList.totalPage}">
					<button class="button button1" type="button" title="다음 10 페이지로 이동합니다." 
							onclick="location.href='?currentPage=${guestbookList.currentPage + 10}'">다음</button>
				</c:if>
				
				<c:if test="${guestbookList.endPage >= guestbookList.totalPage}">
					<button class="button button2" type="button" title="이미 마지막 10 페이지 입니다." 
							disabled="disabled">다음</button>
				</c:if>
				
				<!-- 마지막으로 -->
				<c:if test="${guestbookList.currentPage < guestbookList.totalPage}">
					<button class="button button1" type="button" title="첫 페이지로 이동합니다." 
							onclick="location.href='?currentPage=${guestbookList.totalPage}'">마지막</button>
				</c:if>
				
				<c:if test="${guestbookList.currentPage >= guestbookList.totalPage}">
					<button class="button button2" type="button" title="이미 마지막 페이지 입니다." disabled="disabled">
						마지막
					</button>
				</c:if>
			
			</div>
		
		<tr>
			<td align="center">
				<form action="list.jsp" method="post" colspan="2" align="center">
					<select name="category">
						<option>내용</option>
						<option>이름</option>
						<option>내용+이름</option>
					</select>
					<input type="text" name="item" value="${item}"/>
					<input type="submit" value="검색"/>
				</form>
			</td>
		</tr>
		
		<!-- 글쓰기 버튼 -->
		<div>
			<div colspan="2" align="right" >
				<input type="button"  value="글쓰기" onclick="location.href='insert.jsp'"/>
			</div>
		</div>
	</div>
	
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












