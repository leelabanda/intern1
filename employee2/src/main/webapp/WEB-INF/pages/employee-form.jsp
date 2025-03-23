<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
</head>
<body>
    <h2>Add / Edit Employee</h2>
    <form action="/employee/save" method="post">
        <input type="hidden" name="id" value="${employee.id}">
        <label>Name:</label>
        <input type="text" name="name" value="${employee.name}" required><br>

        <label>Email:</label>
        <input type="email" name="email" value="${employee.email}" required><br>

        <label>Department:</label>
        <input type="text" name="department" value="${employee.department}" required><br>

        <button type="submit">Save</button>
    </form>
    <br>
    <a href="/employees">Back to List</a>
</body>
</html>
