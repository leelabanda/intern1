<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="nb" class="javac1.MyBean" scope="request"/>
<p>Name Retrieve from JavaBean has the value of:
<b><jsp:getProperty name="nb" property="user"/></b><br>
Password Retrieve from JavaBean has the value of:
<b><jsp:getProperty name="nb" property="pass"/></b><br>
Gender Retrieve from JavaBean has the value of:
<b><jsp:getProperty name="nb" property="gender"/></b><br></p>
</body>
</html>