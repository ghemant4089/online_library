
			
			
<%@ page import="java.sql.*"%>

<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>My World - Lehlogonolo Masubelele</title>
<link href="user1.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<form>
<div id="Wrapper">
<div id="Header"></div>
<div id="Menu">		
		<ul>
			<li class="active"><a href="user1.jsp">Home</a></li>
			<li><a href="search1.jsp">Search</a></li>
			<li><a href="author.jsp">Search by Author</a></li>
			<li><a href="bookreportuser.jsp">Books </a></li>
			<li><a href="myaccount.jsp">Profile</a></li>
			<li><a href="#">About Us</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
</div>
<div id="ContentTop"></div>

<div id="Sidebar">
<ul><h2>Categories</h2>
<li>
<ul>
	<li><a href="A-E.jsp">A-B-C-D</a></li>
	<li><a href="E-I.jsp">E-F-G-H</a></li>
	<li><a href="I-M.jsp">I-J-K-L</a></li>
	<li><a href="M-Q.jsp">M-N-O-P</a></li>
	<li><a href="Q-V.jsp">Q-R-S-T</a></li>
	<li><a href="V-Z.jsp">U-V-W-X</a></li>
	<li><a href="Y-Z">Y-Z</a></li>
</ul>
</li>

</ul>
</div>
<%@ include file="db.jsp"%>
<body bgcolor="gray">
<center>
<table>
<tr><td  style="height: 1px">

 <table border='1' width='100%'>
	  <TR><TH colspan='3'>BOOKS CATALOG</TR>
	  <tr><th>Book Name
			<th>Book Code
			<th>Author
			</tr>
	  <%
		ResultSet rs=st.executeQuery("select * from  stock ");
		while(rs.next())
		{
out.println("<tr><td>"+rs.getString("bname")+
			"<td>"+rs.getString("bcode")+
			"<td>"+rs.getString("author")+
			"</tr>");
		}
		%> 
		</table>
		</td>
		</tr>
		</table>
		</center>
		
		
		</div>

<div id="Footer"><p>Copyright © 2012 My World - <a  href="#">Lehlogonolo Masubelele</a>. All Rights Reserved. | <a href="#">JazziroSoft</a> | </p></div>
</form>
</body>



</html>

	
		
		

               


