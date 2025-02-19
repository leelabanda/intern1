<%@ page language="java" import="java.time.*,java.time.format.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- This is demo --%>
<% LocalTime time=LocalTime.now();
LocalDate date=LocalDate.now();
DateTimeFormatter newPattern=DateTimeFormatter.ofPattern("dd-mm-yy");
%>
<%=time.getHour()%>:<%=time.getMinute()%>:<%=time.getSecond()%>
 
</body>
</html>