


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Lost Report </title>
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
    
    <center>
        
        <div>
            
            
            
            <form method="post" action="process.jsp"> 
            <table>
                <tr>
                    <td> Found Item Name </td>
                    <td><input type="text" class="form-control" name ="name" placeholder="Item Name" required></td>   
                </tr>
                <tr>
                    <td>Tracking ID </td>
                    <td><input type="text"class="form-control" name ="code" placeholder="Tracking Id"required></td>
                    
                </tr>
                
                <tr>
                    <td> Email </td>
                    <td><input type="text"class="form-control" name ="email" placeholder="Write Email"required></td>
                    
                </tr>
                <tr>
                    <td> Found Date </td>
                    <td><input type="date"class="form-control" name ="date" placeholder="Date"required></td>
                    
                </tr>
                
                
                
                
                <tr>
                    
                    <td colspan="2" style="text-align: center"><input class ="btn btn-success" type="submit" value="submit"  </td>
                    
                </tr>
                <h1 align="center"> Welcome to <img src="../image/LOGO-UTM.png" alt="" width="100" height="40"> Security System  </h1>
               
             </table>
            </form>
          </div>
       


               
             
                
                
            
        
    </body>
</html>

