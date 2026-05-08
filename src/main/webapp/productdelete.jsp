<!DOCTYPE html>
<html>
<head>

<title>Delete Product</title>

<style>

body{
font-family:Arial;
background:linear-gradient(to right,#87ceeb,#b0e0e6,#87cefa);
text-align:center;
margin:0;
padding:0;
}

h2{
margin-top:40px;
font-size:32px;
color:#0d47a1;
text-shadow:2px 2px 5px white;
}

form{
background:white;
width:350px;
margin:auto;
margin-top:30px;
padding:25px;
border-radius:15px;
box-shadow:0px 0px 15px gray;
}

label{
font-size:18px;
font-weight:bold;
color:black;
}

input[type=text]{
width:100%;
padding:10px;
border:2px solid #64b5f6;
border-radius:8px;
background:#f0f8ff;
font-size:15px;
}

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

button{
padding:8px 18px;
border:none;
border-radius:6px;
font-size:14px;
font-weight:bold;
cursor:pointer;
margin:5px;
}

button:hover{
opacity:0.9;
}

button:first-child{
background-color:#1976d2;
color:white;
}

button:last-child{
background-color:red;
color:white;
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

.success{
color:green;
font-weight:bold;
font-size:16px;
}

.error{
color:red;
font-weight:bold;
font-size:16px;
}

</style>

<script>

function showMessage()
{
    var id = document.getElementById("id").value;

    document.getElementById("error").innerHTML = "";

    if(id == "")
    {
        document.getElementById("error").innerHTML =
        "Please enter Product ID";

        return false;
    }

    document.getElementById("confirmBox").style.display = "block";

    return false;
}

function deleteProduct()
{
    document.getElementById("deleteForm").submit();
}

function cancelDelete()
{
    document.getElementById("confirmBox").style.display = "none";
}

</script>

</head>

<body>

<h2>DELETE PRODUCT</h2>

<!-- ✅ SUCCESS / ERROR MESSAGE FROM SERVLET -->
<%
String msg = request.getParameter("msg");
String error = request.getParameter("error");

if("deleted".equals(msg)) {
%>
    <p class="success">Product deleted successfully!</p>
<%
}

if("notfound".equals(error)) {
%>
    <p class="error">Product ID not found!</p>
<%
}
%>

<form id="deleteForm"
action="DeleteProductServlet"
method="get"
onsubmit="return showMessage()">

<label>Product ID :</label>

<br><br>

<input type="text" name="id" id="id">

<br><br>

<input type="submit" value="Delete Product">

<br><br>

<span id="error"
style="color:red;
font-size:14px;
font-weight:bold;">
</span>

<div id="confirmBox"
style="display:none;">

<span style="color:#0d47a1;
font-size:16px;
font-weight:bold;">

Are you sure you want to delete?

</span>

<br><br>

<button type="button"
onclick="deleteProduct()">

Yes

</button>

<button type="button"
onclick="cancelDelete()">

No

</button>

</div>

</form>

<br>

<a href="index.jsp">Back</a>

</body>
</html>