<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://LocalHost:3306/student2" user="root" password="root@39"/>
<html>
<head>
 
<title>Insert title here</title>
</head>
<body>
<c:set var="s" value="${param.user}"/>
we welcome
<c:out value="${s}"/>
<form>
<table border=1>
<tr>
<th>EmpNo</th>
<th>EmpName</th>
<th>Salary</th>
<sql:query var="user" sql="SELECT  EmpNo,EmpName,Salary from employee">
</sql:query>
<c:forEach var="row" items="${user.rows}">
<tr>
<td><c:out value="${row.EmpNo}"/></td>
<td><c:out value="${row.EmpName}"/></td>
<td><c:out value="${row.Salary}"/></td>
</tr>
</c:forEach>
</table>
</form>
</body>
</html>