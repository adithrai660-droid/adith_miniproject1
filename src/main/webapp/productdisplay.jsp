<%@ page import="java.util.*,com.model.Product" %>

<!DOCTYPE html>
<html>
<head>
<title>Product List</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f6f8;
    margin: 0;
    padding: 20px;
}

h2 {
    text-align: center;
    color: #333;
}

table {
    width: 90%;
    margin: auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}

th {
    background-color: #4CAF50;
    color: white;
    padding: 12px;
}

td {
    text-align: center;
    padding: 10px;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #e6f7ff;
}

a {
    text-decoration: none;
    padding: 5px 10px;
    margin: 2px;
    border-radius: 4px;
    color: white;
}

a[href*="productadd"] {
    background-color: #28a745;
}

a[href*="productupdate"] {
    background-color: #007bff;
}

a[href*="productdelete"] {
    background-color: #dc3545;
}

a:hover {
    opacity: 0.8;
}

.back-btn {
    display: block;
    width: 100px;
    margin: 20px auto;
    text-align: center;
    background-color: #555;
    padding: 8px;
    color: white;
    border-radius: 5px;
}
</style>

</head>
<body>

<h2>Product List</h2>

<table border="1" cellpadding="10">
<tr>
<th>ID</th>
<th>Name</th>
<th>Category</th>
<th>Price</th>
<th>Quantity</th>
<th>Action</th>
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

<td>
<a href="productadd.jsp?id=<%=p.getProductId()%>">Add</a>
<a href="productupdate.jsp?id=<%=p.getProductId()%>">Update</a> |
<a href="productdelete.jsp?id=<%=p.getProductId()%>">Delete</a>
</td>

</tr>

<%
    }
} else {
%>

<tr>
<td colspan="6">No Products Found</td>
</tr>

<%
}
%>

</table>

<a href="index.jsp" class="back-btn">Back</a>

</body>
</html>