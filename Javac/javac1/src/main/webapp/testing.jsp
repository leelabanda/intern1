<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--creating javabeans --%>
<jsp:useBean id="nb" class="javac1.MyBean" scope="request">
<jsp:setProperty name="nb" property="user" param="user"/>
<jsp:setProperty name="nb" property="pass" param="pass" />
<jsp:setProperty name="nb" property="gender" param="gender"/> <!-- Set the gender property based on form input -->
</jsp:useBean>
<%String s=nb.getUser(); %>
<%String gender = nb.getGender(); %>
<jsp:forward page="BeanScope.jsp"></jsp:forward>
 
</body>
</html>