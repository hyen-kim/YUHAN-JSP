<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<!-- page 지시자 : 페이지의 속성을 지정할 때 사용, import문을 많이 사용 -->
	<%
		int[] iArr = { 10, 20, 30 };
		out.println(Arrays.toString(iArr));
	%>

</body>
</html>