<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	에러가 발생하였습니다.<br /> 금방 수정하겠습니다.<br />
	에러 종류 : <%= exception.getMessage() %>
</body>
</html>