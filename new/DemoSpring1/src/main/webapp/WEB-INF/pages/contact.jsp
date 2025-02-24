<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="addContact.html" modelAttribute="Contact">
<table>
<tr>
<td><form:label path="cno">Contact ID</form:label></td>
<td><form:input path="cno"/></td>
</tr>
<tr>
<td><form:label path="name">Name</form:label></td>
<td><form:input path="name"/></td>
</tr>
<tr>
<td><form:label path="gender">Gender</form:label></td>
<td>Male<form:radiobutton path="gender" value="Male"/>
<td>Female<form:radiobutton path="gender" value="Female"/>
</tr>
<tr>
<td>Property: </td>
<td>House<form:checkbox path="prop" value="House"/></td>
<td>Car<form:checkbox path="prop" value="Car"/></td>
<td>Land<form:checkbox path="prop" value="Land"/></td>
</tr>
<tr>
<td>City:</td>
<td>
<form:select path="city">
<form:option value="Chennai" label="Chennai"/>
<form:option value="Mumbai" label="Mumbai"/>
<form:option value="Delhi" label="Delhi"/>
</form:select>
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="Add Contact"/>
</td>
</tr>
</table>
</form:form>
</body>
</html>