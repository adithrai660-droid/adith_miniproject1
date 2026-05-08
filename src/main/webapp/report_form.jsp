<!DOCTYPE html>
<html>
<head>
<title>Report Form</title>
<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #f1f8e9, #e0f7fa);
    margin: 0;
    padding: 0;
    text-align: center;
}

h2 {
    margin-top: 30px;
    font-size: 26px;
    color: #2e7d32;
    text-transform: uppercase;
    letter-spacing: 1px;
}

form {
    display: inline-block;
    background: #ffffff;
    padding: 25px 35px;
    border-radius: 10px;
    box-shadow: 0 6px 18px rgba(0,0,0,0.15);
    text-align: left;
    margin-top: 20px;
    animation: fadeIn 0.8s ease-in-out;
}

select, input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-top: 6px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 15px;
    transition: border-color 0.3s ease;
}

select:focus, input[type="text"]:focus {
    border-color: #2e7d32;
    outline: none;
}

input[type="submit"] {
    background-color: #2e7d32;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.2s ease;
    width: 100%;
}

input[type="submit"]:hover {
    background-color: #1b5e20;
    transform: scale(1.05);
}

a {
    display: inline-block;
    margin-top: 20px;
    font-size: 16px;
    color: #2e7d32;
    font-weight: bold;
    text-decoration: none;
    transition: color 0.3s ease;
}

a:hover {
    color: #1b5e20;
}

/* Smooth fade-in animation */
@keyframes fadeIn {
    from {opacity: 0; transform: translateY(20px);}
    to {opacity: 1; transform: translateY(0);}
}
</style>
</head>
<body>

<h2>Generate Report</h2>

<form action="ReportCriteriaServlet" method="post">

<select name="type">
    <option value="category">By Category</option>
    <option value="price">Above Price</option>
</select>

<br><br>

Enter Value: <input type="text" name="value">

<br><br>

<input type="submit" value="Generate Report">

</form>

<br>
<a href="index.jsp">Back</a>

</body>
</html>
