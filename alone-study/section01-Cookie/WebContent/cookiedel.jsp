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
		Cookie[] cookies = request.getCookies();		// 쿠키를 받아옴
		
		for(int i = 0; i < cookies.length; i++){
			String str = cookies[i].getName();		
			if(str.equals("cookieN")){				
				out.println("name : " + cookies[i].getName() + "<br/>");
				cookies[i].setMaxAge(0);				// 유효기간을 0초로 바꿈 -> 삭제 됨
				response.addCookie(cookies[i]);			// 다시 탑재를 해줘야 이어져나감.
			}
		}
	%>
	
	<a href = "cookietest.jsp">쿠키확인</a>
	
</body>
</html>