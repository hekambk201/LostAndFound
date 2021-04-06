<%-- 
    Document   : Search
    Created on : Jan 9, 2020, 12:02:09 AM
    Author     : earif
--%>

<%-- 
    Document   : search
    Created on : Jan 7, 2020, 2:47:28 AM
    Author     : earif
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ip";
String userid = "root";
String password = "";
String code =request.getParameter("code");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <style>
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
<h1>Search Data</h1>
<table border="1">
<tr>
 <td>ID </td>   
<td>Name</td>
<td>Tracking ID</td>
<td>Email</td>
<td>Lost Date</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from lost where code='"+code+"' ";
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