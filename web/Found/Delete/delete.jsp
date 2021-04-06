<%-- 
    Document   : delete
    Created on : Jan 8, 2020, 11:05:28 PM
    Author     : earif
--%>

 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ip", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM found WHERE id="+id);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 