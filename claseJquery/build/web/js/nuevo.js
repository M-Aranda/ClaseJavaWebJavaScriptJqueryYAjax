/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




function sumar() {

    var num1 = $("#num1").val();
    var num2 = $("#num2").val();
    /*
     num1=parseInt(num1);
     num2=parseInt(num2);
     */
    var res = +num1 + +num2;

    $("#resultado").html(res);

}


function saludar() {
    // console.log("Hola");           
    /*
     var msg=document.getElementById("mensaje");
     msg.innerHTML="Hola desde la funcion JS!";
     */

    var nombre = $("#nombre").val();
    $("#mensaje").html("Hola " + nombre);
}
            