<%@page import="com.park.service.SelectService"%>
<%@page import="com.park.vo.GuestbookList"%>
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
	int currentPage = 1;
	try {
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
	} catch (NumberFormatException e) { }
	
	String category = request.getParameter("category");
	String item = request.getParameter("item");
	if (item != null) {
		session.setAttribute("category", category);
		item = item.trim().length() == 0 ? "" : item;
		session.setAttribute("item", item);
	} else {
		category = (String) session.getAttribute("category");
		item = (String) session.getAttribute("item");
	}

	SelectService select = SelectService.getInstance();
	GuestbookList guestbookList = null;
	

	if (item == null || item.trim().length() == 0) {
		guestbookList = select.selectList(currentPage);
	} else {
		guestbookList = select.selectListMulti(currentPage, category, item);
	}
	
	request.setAttribute("guestbookList", guestbookList);
	request.setAttribute("enter", "\r\n");
	pageContext.forward("listView2.jsp");
%>
	
	
</body>
</html>











