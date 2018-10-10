<%-- 
    Document   : testAjax
    Created on : 10-10-2018, 10:55:26
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



        <script src="js/jquery-3.3.1.js"></script>

        <script>
            function buscar() {
                var rutUsuario = $("#rut").val();
                // alert(rutUsuario);// alert() debeise no usarse, pero se puede

                $.ajax({
                    type: 'POST',
                    url: 'http://localhost:8080/claseJquery/buscar.do',
                    data: {
                        rut: rutUsuario
                    }
                }).done(function (resultadoHtml) {
                    $("#datos").html(resultadoHtml);
                });

            }

        </script>
        <input type="text" id="rut" name="rut" placeholder="Rut: ">
        <input type="button" value="Buscar" onclick="buscar()">

        <div id="datos"></div>
    </body>
</html>
