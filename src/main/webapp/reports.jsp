<!DOCTYPE html>
<html>
<head>
<title>Reports</title>

<style>

body{
font-family: 'Segoe UI', Arial;
background: linear-gradient(135deg, #667eea, #764ba2);
margin:0;
padding:0;
text-align:center;
min-height:100vh;
display:flex;
flex-direction:column;
justify-content:center;
align-items:center;
color:white;
}

h2{
font-size:38px;
margin-bottom:30px;
text-shadow:2px 2px 8px rgba(0,0,0,0.3);
}

.container{
background: rgba(255,255,255,0.15);
padding:40px;
border-radius:20px;
box-shadow:0 10px 30px rgba(0,0,0,0.3);
backdrop-filter: blur(10px);
width:300px;
}

a{
display:block;
text-decoration:none;
margin:15px 0;
padding:12px;
font-size:18px;
font-weight:bold;
color:white;
border-radius:10px;
background: linear-gradient(135deg, #00c6ff, #0072ff);
transition:0.3s;
}

a:hover{
transform:translateY(-3px);
opacity:0.9;
}

.back{
background: linear-gradient(135deg, #ff416c, #ff4b2b);
}

</style>

</head>

<body>

<h2>Reports</h2>

<div class="container">

<a href="report_form.jsp">Generate Report</a>

<a href="index.jsp" class="back">Back</a>

</div>

</body>
</html>