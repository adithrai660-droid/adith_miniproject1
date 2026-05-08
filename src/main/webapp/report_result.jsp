<%@ page import="java.util.*, com.model.Product" %>

<!DOCTYPE html>
<html>
<head>
<title>Report Result</title>
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

hr {
    width: 80%;
    border: 1px solid #ccc;
    margin: 20px auto;
}

table {
    margin: 30px auto;
    border-collapse: collapse;
    width: 85%;
    background: #ffffff;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    animation: fadeIn 0.8s ease-in-out;
}

th {
    background-color: #2e7d32;
    color: white;
    padding: 12px;
    font-size: 15px;
    text-transform: uppercase;
}

td {
    padding: 10px;
    border-bottom: 1px solid #eee;
    font-size: 14px;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr:hover {
    background-color: #f1f8e9;
    transition: background 0.3s ease;
}

a {
    display: inline-block;
    margin-top: 25px;
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

<h2>Report Result</h2>
<hr>

<table border="1" cellpadding="10">
<tr>
<th>ID</th>
<th>Name</th>
<th>Category</th>
<th>Price</th>
<th>Quantity</th>
</tr>

<%
List<Product> list = (List<Product>)request.getAttribute("list");

if(list != null && !list.isEmpty()) {
    for(Product p : list) {
%>

<tr>
<td><%=p.getProductId()%></td>
<td><%=p.getProductName()%></td>
<td><%=p.getCategory()%></td>
<td><%=p.getPrice()%></td>
<td><%=p.getQuantity()%></td>
</tr>

<%
    }
} else {
%>

<tr>
<td colspan="5" style="text-align:center; color:red;">
No Data Found
</td>
</tr>

<%
}
%>

</table>

<br><br>

<a href="reports.jsp"> Back to Reports</a>

</body>
</html>
