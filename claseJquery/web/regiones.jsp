<%-- 
    Document   : regiones
    Created on : 10-10-2018, 11:46:42
    Author     : maranda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ciudades</title>
    </head>
    <body>

        <select id="region" onchange="mostrarCiudades()">
            <option>Region 1</option>
            <option>Region 2</option>
            <option>Region 3</option>         
        </select>

        <script src="js/jquery-3.3.1.js"></script>



        <script>

            function mostrarCiudades() {
                var valor = $("#region").val();
                $.ajax({
                    type: 'POST',
                    url: 'http://localhost:8080/claseJquery/buscarCiudad.do',
                    data: {
                        region: valor
                    }
                }).done(function (resultadoHtml) {
                    $("#datos").html(resultadoHtml);
                });

            }

        </script>

        <div id="datos"></div>


    </body>
</html>
