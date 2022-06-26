<%@page import="com.park.service.InsertService"%> 
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
%>
	<jsp:useBean id="vo" class="com.park.vo.GuestbookVO">
		<jsp:setProperty property="*" name="vo"/>
	</jsp:useBean>
	<%-- ${vo} --%>

<%
	InsertService.getInstance().insert(vo);

	response.sendRedirect("list.jsp");
%>

</body>
</html>










