<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            margin: 0;
            min-height: 100vh;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 40px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        .welcome-section {
            background: linear-gradient(to right, #2196F3, #4CAF50);
            padding: 20px;
            border-radius: 10px;
            color: white;
            margin-bottom: 30px;
        }

        h3 {
            margin: 0;
            font-size: 24px;
            font-weight: 500;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 40px;
            font-size: 36px;
        }

        .button-container {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
        }

        button {
            padding: 15px 30px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .add-btn {
            background-color: #4CAF50;
            color: white;
        }

        .add-btn:hover {
            background-color: #45a049;
            transform: translateY(-2px);
        }

        .fetch-btn {
            background-color: #2196F3;
            color: white;
        }

        .fetch-btn:hover {
            background-color: #1976D2;
            transform: translateY(-2px);
        }

        .logout-btn {
            background-color: #f44336;
            color: white;
        }

        .logout-btn:hover {
            background-color: #d32f2f;
            transform: translateY(-2px);
        }

        a {
            text-decoration: none;
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }
            
            button {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="welcome-section">
            <h3>Welcome, <%=session.getAttribute("username")%></h3>
        </div>
        
        <h1>Dashboard</h1>
        
        <div class="button-container">
            <a href="add-product"><button class="add-btn">Add Product</button></a>
            <a href="fetch-products"><button class="fetch-btn">Fetch Products</button></a>
            <a href="logout"><button class="logout-btn">Logout</button></a>
        </div>
    </div>

    <c:if test="${message!=null}">
        <script type="text/javascript">
            alert("${message}")
        </script>
    </c:if>
</body>
</html>
