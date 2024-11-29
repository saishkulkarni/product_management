<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Product</title>
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
            width: 500px;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
            font-size: 28px;
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
            font-size: 16px;
        }

        input {
            padding: 12px;
            border: 2px solid #e1e1e1;
            border-radius: 5px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        input:focus {
            outline: none;
            border-color: #2196F3;
            box-shadow: 0 0 5px rgba(33, 150, 243, 0.2);
        }

        .btn-container {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 20px;
        }

        button {
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .update-btn {
            background-color: #2196F3;
            color: white;
        }

        .update-btn:hover {
            background-color: #1976D2;
            transform: translateY(-2px);
        }

        .back-btn {
            background-color: #6c757d;
            color: white;
        }

        .back-btn:hover {
            background-color: #5a6268;
            transform: translateY(-2px);
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Product</h1>
        <form action="edit" method="post">
            <input type="hidden" name="id" value="${p.id}">
            
            <div class="form-group">
                <label for="name">Product Name</label>
                <input type="text" name="name" id="name" value="${p.name}" required>
            </div>
            
            <div class="form-group">
                <label for="description">Product Description</label>
                <input type="text" name="description" id="description" value="${p.description}" required>
            </div>
            
            <div class="form-group">
                <label for="imageLink">Product Image Link</label>
                <input type="text" name="imageLink" id="imageLink" value="${p.imageLink}" required>
            </div>
            
            <div class="form-group">
                <label for="price">Product Price</label>
                <input type="number" name="price" id="price" value="${p.price}" step="0.01" required>
            </div>
            
            <div class="form-group">
                <label for="category">Product Category</label>
                <input type="text" name="category" id="category" value="${p.category}" required>
            </div>
            
            <div class="btn-container">
                <button type="submit" class="update-btn">Update Product</button>
                <a href="home"><button type="button" class="back-btn">Back</button></a>
            </div>
        </form>
    </div>
</body>
</html>
