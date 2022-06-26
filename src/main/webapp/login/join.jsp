<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >  
<title>JSP 게시판 웹 사이트</title>
<link rel="icon" href="../main_img/kimsabu_favicon.ico"/>

<link rel="stylesheet" href="../main_css/loginlogin.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/register_ajax.js"></script>
</head>
<body>
   	<div class="alert-box">
        <p class="alert"></p>
    </div>
    
                <form method = "post" action="joinAction.jsp">
                <div class="form">
                    <h1 class="heading">REGISTER</h1>
                        <input type ="text" class="name" placeholder="ID" name ="userID" maxlength='20'>
                        <input type ="password" class="pasword1" placeholder="password" name ="userPassword" maxlength='20'>
                        <input type ="text" class="name" placeholder="name" name ="userName" maxlength='20'>
                        <input type ="email" class="email" placeholder="email" name ="userEmail" maxlength='20'>
                    <input type="submit" class="submit-btn"  value="회원가입">
                    </div>
                </form>
   
    <script src="../js/loginlogin.js"></script>
</body>
</html>