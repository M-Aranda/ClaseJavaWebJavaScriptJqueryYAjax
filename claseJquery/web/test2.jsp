<%-- 
    Document   : test2
    Created on : 10-10-2018, 9:57:22
    Author     : maranda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="cuadrado" onclick="cambiarCSS()">0</div>
        
        <style>
            #cuadrado{
                width: 200px;
                height: 200px;
                background-color: rgb(255,0,0);
                color: white;
                font-size: 28px;
                font-align: center;
                font-family: arial;
            }
        </style>
        
        
        
        
        
        <script src="js/jquery-3.3.1.js"></script>
        
        <script>
            
            function cambiarCSS(){
               var r = Math.floor((Math.random() * 255) + 0);
               var g = Math.floor((Math.random() * 255) + 0);
               var b = Math.floor((Math.random() * 255) + 0);

                
                
                $("#cuadrado").css("background-color","rgb("+r+", "+g+", "+b+" )");
            }
        </script>
        
        
        
    </body>
</html>
