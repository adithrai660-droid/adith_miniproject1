<!DOCTYPE html>
<html>
<head>

<title>Add Product</title>

<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

    background: linear-gradient(
    -45deg,
    #87ceeb,
    #b0e0e6,
    #add8e6,
    #87cefa);

    background-size: 400% 400%;

    animation: gradientBG 10s ease infinite;

    margin: 0;
    padding: 0;
    text-align: center;
}

@keyframes gradientBG {

    0% {
        background-position: 0% 50%;
    }

    50% {
        background-position: 100% 50%;
    }

    100% {
        background-position: 0% 50%;
    }
}

h2 {
    margin-top: 30px;
    font-size: 30px;
    color: #0d47a1;
    text-transform: uppercase;
    letter-spacing: 2px;
    text-shadow: 2px 2px 5px white;
}

form {
    display: inline-block;
    background: rgba(255,255,255,0.95);
    padding: 30px 40px;
    border-radius: 18px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.25);
    text-align: left;
    margin-top: 20px;
    animation: fadeIn 0.8s ease-in-out;
}

label {
    font-size: 16px;
    font-weight: bold;
    color: black;
}

form input[type="text"],
form input[type="number"] {
    width: 100%;
    padding: 12px;
    margin-top: 6px;
    margin-bottom: 18px;
    border: 2px solid #64b5f6;
    border-radius: 10px;
    font-size: 15px;
    background-color: #f0f8ff;
    transition: all 0.3s ease;
}

form input[type="text"]:focus,
form input[type="number"]:focus {
    border-color: #1976d2;
    background-color: white;
    box-shadow: 0 0 10px #42a5f5;
    outline: none;
}

form input[type="submit"] {
    background: linear-gradient(to right, #42a5f5, #1976d2);
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 10px;
    font-size: 17px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s ease;
    width: 100%;
}

form input[type="submit"]:hover {
    background: linear-gradient(to right, #1976d2, #0d47a1);
    transform: scale(1.04);
}

a {
    display: inline-block;
    margin-top: 20px;
    font-size: 16px;
    color: white;
    font-weight: bold;
    text-decoration: none;
    background: #1976d2;
    padding: 10px 18px;
    border-radius: 8px;
    transition: 0.3s ease;
}

a:hover {
    background: #0d47a1;
}

@keyframes fadeIn {

    from {
        opacity: 0;
        transform: translateY(20px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

</style>

</head>

<body>

<h2>ADD PRODUCT</h2>

<form action="AddProductServlet" method="post">

<label>Product Name:</label>
<input type="text" name="name" required><br><br>

<label>Product Category:</label>
<input type="text" name="category" required><br><br>

<label>Product Price:</label>
<input type="number" step="0.01" name="price" required><br><br>

<label>Product Quantity:</label>
<input type="number" name="quantity" required><br><br>

<input type="submit" value="Add Product">

</form>

<br>

<center>
<a href="index.jsp"> Back</a>
</center>

</body>
</html>