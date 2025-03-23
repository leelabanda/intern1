<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Logout</title>
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
        button {
            margin-top: 10px;
            padding: 10px;
            width: 90%;
            background-color: red;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>You have been logged out</h2>
        <p>Thank you for using our service.</p>
        <a href="/login"><button>Login Again</button></a>
    </div>

</body>
</html>
