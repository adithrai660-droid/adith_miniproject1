<%@ page import="java.util.*,com.dao.ProductDAO,com.model.Product" %>

<%
ProductDAO dao = new ProductDAO();
List<Product> list = dao.getAllProducts();

Product p = null;

String id = request.getParameter("id");

if(id != null)
{
    p = dao.getProductById(Integer.parseInt(id));
}
%>

<!DOCTYPE html>
<html>
<head>

<title>Update Product</title>

<style>

body{
font-family:Arial;
background:linear-gradient(to right,#87ceeb,#b0e0e6,#87cefa);
text-align:center;
margin:0;
padding:0;
}

h2{
margin-top:35px;
font-size:32px;
color:#0d47a1;
text-shadow:2px 2px 5px white;
}

form{
background:white;
width:380px;
margin:auto;
margin-top:25px;
padding:25px;
border-radius:15px;
box-shadow:0px 0px 15px gray;
text-align:left;
}

label{
font-size:17px;
font-weight:bold;
color:black;
}

select,
input[type=text]{
width:100%;
padding:10px;
border:2px solid #64b5f6;
border-radius:8px;
background:#f0f8ff;
font-size:15px;
}

select:focus,
input[type=text]:focus{
border-color:#1976d2;
outline:none;
box-shadow:0 0 8px #42a5f5;
background:white;
}

input[type=submit]{
background:linear-gradient(to right,#42a5f5,#1976d2);
color:white;
padding:12px;
border:none;
border-radius:8px;
width:100%;
font-size:16px;
font-weight:bold;
cursor:pointer;
}

input[type=submit]:hover{
background:linear-gradient(to right,#1976d2,#0d47a1);
}

a{
text-decoration:none;
font-size:18px;
font-weight:bold;
color:white;
background:#1976d2;
padding:8px 16px;
border-radius:8px;
}

a:hover{
background:#0d47a1;
}

</style>

</head>

<body>

<h2>UPDATE PRODUCT</h2>

<form method="post">

<label>Select Product ID :</label>

<br><br>

<select name="id">

<option value="">Select</option>

<%
for(Product pr : list)
{
%>

<option value="<%=pr.getProductId()%>">

<%=pr.getProductId()%>

</option>

<%
}
%>

</select>

<br><br>

<input type="submit" value="Go">

</form>

<br>

<%
if(p != null)
{
%>

<form action="UpdateProductServlet" method="post">

<label>Product ID :</label>

<br><br>

<input type="text"
name="id"
value="<%=p.getProductId()%>"
readonly>

<br><br>

<label>Product Name :</label>

<br><br>

<input type="text"
name="name"
value="<%=p.getProductName()%>">

<br><br>

<label>Category :</label>

<br><br>

<input type="text"
name="category"
value="<%=p.getCategory()%>">

<br><br>

<label>Price :</label>

<br><br>

<input type="text"
name="price"
value="<%=p.getPrice()%>">

<br><br>

<label>Quantity :</label>

<br><br>

<input type="text"
name="quantity"
value="<%=p.getQuantity()%>">

<br><br>

<input type="submit" value="Update Product">

</form>

<%
}
%>

<br>

<a href="index.jsp"> Back</a>

</body>
</html>