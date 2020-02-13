<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리의 첫 번째 페이지</title>
</head>
<body>
	Hello World ! 
	<form action="userJoinAction.jsp" method="post">
		<input type="text" name="userID">
		<input type="text" name="userPW">
		<input type="submit" value="회원가입">
	</form>
</body>
</html>