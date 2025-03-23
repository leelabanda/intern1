<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Edit Employee</title>
</head>
<body>
    <h2>Edit Employee</h2>
    <form:form modelAttribute="employee" action="${pageContext.request.contextPath}/employees/update" method="post">
        <input type="hidden" name="id" value="${employee.id}"/>
        Name: <form:input path="name"/><br>
        Email: <form:input path="email"/><br>
        <input type="submit" value="Update">
    </form:form>
</body>
</html>
