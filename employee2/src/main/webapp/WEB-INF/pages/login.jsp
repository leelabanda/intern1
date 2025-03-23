<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Web Application</title>
    <style>
        .button-container {
            display: flex;
            gap: 10px; /* Space between buttons */
            justify-content: center; /* Center the buttons */
        }
    </style>
</head>
<body>
    <center>
        <h1>Welcome to Spring Boot</h1>
        <h2>Login Proceed</h2>
        <font color="red">${errorMessage}</font>

        <form action="login" method="post">
            UserName: <input type="text" name="name"/><br>
            <br>Password: <input type="password" name="password"/><br>
            <br><input type="submit" value="Login"/>
             <p>New User <a href="/register"><button>Register</button></a></p>
        </form>
    </center>
</body>
</html>
