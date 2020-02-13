<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="utill.DatabaseUtill"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String userPW = null;
	if (request.getParameter("userID") != null) {
		userID = (String) request.getParameter("userID");
	}
	if (request.getParameter("userPW") != null) {
		userPW = (String) request.getParameter("userPW");
	}
	if (userID == null || userPW == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		return;
	}
	UserDAO userDAO = new UserDAO();

	int result = userDAO.join(userID, userPW);

	if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입이 성공하였습니다.');");
		script.println("location.href = 'index.jsp';");
		script.println("</script>");
		return;
	}
%>