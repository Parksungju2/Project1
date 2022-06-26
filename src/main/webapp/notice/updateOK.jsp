<%@page import="com.park.service.UpdateService"%>
<%@page import="com.park.service.DeleteService"%>
<%@page import="com.park.service.SelectService"%>
<%@page import="com.park.vo.GuestbookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
	int currentPage = Integer.parseInt(request.getParameter("currentPage"));
%>

	<jsp:useBean id="vo" class="com.park.vo.GuestbookVO">
		<jsp:setProperty property="*" name="vo"/>
	</jsp:useBean>

<%
	GuestbookVO original = SelectService.getInstance().selectByIdx(vo.getIdx());
	out.println("<script>");
	if (original.getPassword().trim().equals(vo.getPassword())) {
		UpdateService.getInstance().update(vo);
		out.println("alert('" + original.getIdx() + "번 글 수정완료!!!')");
	} else {
		out.println("alert('비밀번호가 일치하지 않습니다.')");
	}
	out.println("location.href='list.jsp?currentPage=" + currentPage + "'");
	out.println("</script>");
%>

</body>
</html>










