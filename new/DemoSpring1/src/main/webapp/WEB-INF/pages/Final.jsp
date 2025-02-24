<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html> 
<head> 
<meta charset="UTF-8"> <title>Insert title here</title> 
</head> 
<body> 
${contact.cno}<br> 
${contact.name}<br> 
${contact.gender}<br> 
${contact.city}<br> 
property: 
<c:forEach var="p" items="${contact.prop}"> 
${p} 
</c:forEach> <br>
 ${key} 
 </body> 
 </html>