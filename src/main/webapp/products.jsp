<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Products</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            margin: 0;
            padding: 20px;
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 40px;
            font-size: 36px;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 25px;
            padding: 20px;
        }

        .product-card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .product-details {
            padding: 20px;
        }

        .product-name {
            font-size: 20px;
            font-weight: 600;
            color: #333;
            margin-bottom: 10px;
        }

        .product-description {
            color: #666;
            margin-bottom: 10px;
            font-size: 14px;
        }

        .product-price {
            font-size: 18px;
            color: #2196F3;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .product-category {
            background-color: #e3f2fd;
            color: #1976D2;
            padding: 5px 10px;
            border-radius: 15px;
            font-size: 12px;
            display: inline-block;
            margin-bottom: 15px;
        }

        .button-group {
            display: flex;
            gap: 10px;
        }

        button {
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .edit-btn {
            background-color: #4CAF50;
            color: white;
        }

        .delete-btn {
            background-color: #f44336;
            color: white;
        }

        .back-btn {
            background-color: #6c757d;
            color: white;
            padding: 12px 25px;
            margin: 20px auto;
            display: block;
        }

        button:hover {
            opacity: 0.9;
            transform: translateY(-2px);
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Products</h1>
        
        <div class="products-grid">
            <c:forEach var="p" items="${products}">
                <div class="product-card">
                    <img class="product-image" src="${p.imageLink}" alt="${p.name}">
                    <div class="product-details">
                        <div class="product-name">${p.name}</div>
                        <div class="product-description">${p.description}</div>
                        <div class="product-price">$${p.price}</div>
                        <div class="product-category">${p.category}</div>
                        <div class="button-group">
                            <a href="edit?id=${p.id}"><button class="edit-btn">Edit</button></a>
                            <a href="delete?id=${p.id}"><button class="delete-btn">Delete</button></a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        
        <a href="home"><button class="back-btn">Back</button></a>
    </div>

    <c:if test="${message!=null}">
        <script type="text/javascript">
            alert("${message}")
        </script>
    </c:if>
</body>
</html>
