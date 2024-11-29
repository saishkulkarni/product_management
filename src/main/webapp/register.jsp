<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        label {
            color: #555;
            font-weight: 600;
        }

        input {
            padding: 12px;
            border: 2px solid #e1e1e1;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input:focus {
            outline: none;
            border-color: #2196F3;
        }

        button {
            background-color: #2196F3;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #1976D2;
        }

        .login-btn {
            text-align: center;
            margin-top: 20px;
        }

        .login-btn button {
            background-color: #4CAF50;
        }

        .login-btn button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Create Account</h1>
        <form action="register" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" id="name" required placeholder="Enter your full name">
            </div>
            <div class="form-group">
                <label for="un">Username</label>
                <input type="text" name="username" id="un" required placeholder="Choose a username">
            </div>
            <div class="form-group">
                <label for="pwd">Password</label>
                <input type="password" name="password" id="pwd" required placeholder="Create a password">
            </div>
            <div class="form-group">
                <label for="cpwd">Confirm Password</label>
                <input type="password" name="cpassword" id="cpwd" required placeholder="Confirm your password">
            </div>
            <button type="submit">Register</button>
        </form>
        <div class="login-btn">
            <a href="login"><button type="button">Back to Login</button></a>
        </div>
    </div>

    <c:if test="${message!=null}">
        <script type="text/javascript">
            alert("${message}")
        </script>
    </c:if>
</body>
</html>
