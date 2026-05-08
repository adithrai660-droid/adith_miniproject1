<!DOCTYPE html>
<html>
<head>
    <title>Product Management</title>

    <style>
        body {
            font-family: Arial;
            background: linear-gradient(to right, #74ebd5, #9face6);
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            margin: auto;
            margin-top: 80px;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.3);
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        a {
            display: block;
            text-decoration: none;
            background: #4CAF50;
            color: white;
            padding: 12px;
            margin: 10px 0;
            border-radius: 6px;
            transition: 0.3s;
        }

        a:hover {
            background: #2e7d32;
        }

        .view { background: #2196F3; }
        .view:hover { background: #0b7dda; }

        .update { background: #ff9800; }
        .update:hover { background: #e68900; }

        .delete { background: #f44336; }
        .delete:hover { background: #c62828; }

        .report { background: #9c27b0; }
        .report:hover { background: #6a1b9a; }
    </style>

</head>

<body>

<div class="container">

    <h2>Product Management System</h2>

    <a href="productadd.jsp">Add Product</a>

    <a class="view" href="DisplayProductsServlet"> View Products</a>

    <a class="update" href="productupdate.jsp"> Update Product</a>

    <a class="delete" href="productdelete.jsp"> Delete Product</a>

    <a class="report" href="report_form.jsp"> Reports</a>

</div>

</body>
</html>