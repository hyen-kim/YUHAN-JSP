<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- include 지시자 : 현재 페이지내에 다른 페이지를 삽입할 때 사용. file 속성 이용 -->
	<h1>include01.jsp파일입니다.</h1>
	<br />
	<%@ include file="include02.jsp"%>
	<h1>다시 include01.jsp파일입니다.</h1>
	<br />
	<%-- Jsp에서 쓰는 주석  --%>
	<!-- HTML에서 쓰는 주석 -->
</body>
</html>