<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		//							이름 			값
		Cookie cookie = new Cookie("cookieN", "cookieV");		// 쿠키 객체 생성
		cookie.setMaxAge(60*60);								// 쿠키 속성 지정 : 한시간 동안 유지
		response.addCookie(cookie);								// 줘야하므로 response						
	%>
	
	<a href="cookieget.jsp">cookie get</a>

</body>
</html>