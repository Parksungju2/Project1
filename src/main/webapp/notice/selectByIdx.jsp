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
	int idx = Integer.parseInt(request.getParameter("idx"));
	int currentPage = Integer.parseInt(request.getParameter("currentPage"));
	String job = request.getParameter("job");
	
	GuestbookVO vo = SelectService.getInstance().selectByIdx(idx);


	if (vo == null) {
		out.println("<script>");
		out.println("alert('" + idx + "번 글은 테이블에 존재하지 않습니다.')");
		out.println("location.href='list.jsp'");
		out.println("</script>");
	} else {
		request.setAttribute("vo", vo);
		request.setAttribute("enter", "\r\n");
		request.setAttribute("currentPage", currentPage);
		pageContext.forward(job + ".jsp");
	}

%>

</body>
</html>









