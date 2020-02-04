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
		Cookie[] cookies = request.getCookies();	// 받아야하므로 request
			
		// 쿠키가 여러개 일 수 있으니 반복문을 통해 받음.
		for(int i = 0; i < cookies.length; i++){
			String str = cookies[i].getName();		// 쿠키의 첫번째 이름을 가져옴
			if(str.equals("cookieN")){				// 쿠키의 첫번째 이름이 cookieN일 경우 참
				out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br/>");
				out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br/>");
				out.println("=================================================" + "<br/>" );
			}
		}
	%>
	
	<a href="cookiedel.jsp">cookie delete</a>
</body>
</html>