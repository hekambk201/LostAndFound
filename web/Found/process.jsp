<%-- 
    Document   : process
    Created on : Jan 9, 2020, 4:49:57 AM
    Author     : earif
--%>

<%-- 
    Document   : process
    Created on : Jan 6, 2020, 10:23:52 PM
    Author     : earif
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<%
String name =request.getParameter("name");
String code =request.getParameter("code");
String email =request.getParameter("email");
String date =request.getParameter("date");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ip", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into found (name,code,email,date)values('"+name+"','"+code+"','"+email+"','"+date+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ip";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!Retrive Starts From Here>
<!DOCTYPE html>
<html>
    <title> Data Insert </title>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
</form>
<div class="container">
<form class="form-inline" align="left" method="post" action="Search.jsp">
<input type="text" name="code" class="form-control" placeholder="Tracking ID">
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form>
</div>
  <style>
        .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 8px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.disabled {
  opacity: 0.6;
  cursor: not-allowed;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

</style>

<body>  
    <! Delete Action>
<form action="Delete/index.jsp"> 
<button class="button">Delete Data </button>
</form>
<form action ="../welcome.jsp" > 
<button class="button">Home</button>
</form>
<h1 align="center"> Welcome to <img src="../image/LOGO-UTM.png" alt="" width="100" height="40"> Security System  </h1>

        
<h1>Data Added </h1>
<br>
<table border="1">
<tr>
<th> ID </th>
<th> Lost item Name </th>
<th>Tracking Id </th>
<th>Email</th>
<th>Lost Date</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from found";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("code") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("date") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>