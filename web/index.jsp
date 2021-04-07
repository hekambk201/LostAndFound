<%-- 
    Document   : index
    Created on : Jan 6, 2020, 12:34:12 AM
    Author     : earif
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Staff Login</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <style>
            
            td{
                padding: 10px;
            }
            div{
                width :100%;
                border: 1px solid black;
                border-radius: 5px;
                background-color: lightslategrey;
            }
        </style>
    </head>
    <body>
        <img src="image/UTMimage10_1.jpg" alt="" width="1900" height="550"/>
       
    <center>
        
        <div>
            
            
            
            <form action="StaffLogin" method="POST">
            <table>
                <tr>
                    <td> Acid </td>
                    <td><input type="text" class="form-control" name ="username" placeholder="Acid" required ></td>   
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password"class="form-control" name ="password" placeholder="Password"required ></td>
                    
                </tr>
                
                <tr>
                    <td colspan="2" style="text-align: center"><input class ="btn btn-success" type="submit" value="submit"</td>
                    
                </tr>
                <h1 align="center"> Welcome to <img src="image/LOGO-UTM.png" alt="" width="100" height="40"> Security System  </h1>
                 <center> <h1> <u> Staff Log in </u> </h1></center>
                  <p style="font-size:30px;"> <a href="index1.jsp"> Student Login </a></p>
                
              
                
               
               
             
                
                
            </table>
            </form>
        </div>
        
        
    </center>
    
        
    
    </body>
</html>

