<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
            width: 300px;
            margin: auto;
        }
        input, button {
            margin-top: 10px;
            padding: 10px;
            width: 90%;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Register</h2>

        <!-- Show error message if user exists -->
        <p th:if="${errorMessage}" th:text="${errorMessage}" class="error"></p>

        <form action="/register" method="post">
            <input type="text" name="name" placeholder="Enter Username" required> <br>
            <input type="password" name="password" placeholder="Enter Password" required> <br>
            <button type="submit">Register</button>
        </form>

        <p>Already have an account? <a href="/login">Login here</a></p>
    </div>

</body>
</html>
