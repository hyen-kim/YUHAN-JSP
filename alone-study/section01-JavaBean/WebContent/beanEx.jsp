<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="student" class="com.javaBean.ex.Student" scope="page"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty name="student" property="name" value="홍길동"/>
	<jsp:setProperty name="student" property="age" value="13"/>
	<jsp:setProperty name="student" property="grade" value="6"/>
	<jsp:setProperty name="student" property="studentNum" value="7"/>


	이름 : <jsp:getProperty property="name" name="student"/><br />
	나이 : <jsp:getProperty property="age" name="student"/><br />
	학년 : <jsp:getProperty property="grade" name="student"/><br />
	번호 : <jsp:getProperty property="studentNum" name="student"/>
</body>
</html>