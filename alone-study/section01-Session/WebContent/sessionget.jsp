<%@page import="java.util.Enumeration"%>
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
		Object obj1 = session.getAttribute("mySessionName");
		String mySessionName = (String)obj1;
		out.println(mySessionName + "<br />");
		
		Object obj2 = session.getAttribute("myNum");
		Integer myNum = (Integer)obj2;
		out.println(myNum + "<br />");
		
		out.println("****************************************" + "<br />");
		
		String sName;
		String sValue;
		
		Enumeration enumeration = session.getAttributeNames();
		
		while(enumeration.hasMoreElements()){
			sName = enumeration.nextElement().toString();		// String
			sValue = session.getAttribute(sName).toString();	// String
			
			out.println("sName : " + sName + "<br />");			
			out.println("sValue : " + sValue + "<br />");
		}
		
		out.println("****************************************" + "<br />");
		
		String sessionID = session.getId();
		out.println("sessionID : " + sessionID + "<br />");
		int sessionlnter = session.getMaxInactiveInterval();
		out.println("sessionlnter : " + sessionlnter + "<br />");
		out.println("****************************************" + "<br />");
		
		
		// 세션을 삭제하는 부분
		session.removeAttribute("mySessionName");	// 특정 데이터 삭제
		Enumeration enumeration1 = session.getAttributeNames();	
		
		while(enumeration1.hasMoreElements()){
			sName = enumeration1.nextElement().toString();		// String
			sValue = session.getAttribute(sName).toString();	// String
			
			out.println("sName : " + sName + "<br />");			
			out.println("sValue : " + sValue + "<br />");
		}
		out.println("****************************************" + "<br />");
		
		session.invalidate();	// 세션의 모든 데이터 삭제
		
		if(request.isRequestedSessionIdValid()){
			out.println("session valid");
		}else {
			out.println("session invalid");
		}
	%>
	
	
</body>
</html>