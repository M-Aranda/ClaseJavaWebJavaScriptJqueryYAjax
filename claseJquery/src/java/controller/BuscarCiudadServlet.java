/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maranda
 */
@WebServlet(name="BuscarCiudadServlet", urlPatterns={"/buscarCiudad.do"})
public class BuscarCiudadServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        
        
        String regionSeleccionada=request.getParameter("region");
 
        if(regionSeleccionada.equals("Region 1")){
            response.getWriter().print("<select>"
                    + "<option>Ciudad 1 </option>"
                    + "<option>Ciudad 2 </option>"
                    + "<option>Ciudad 3 </option>"
                    + "</select>");
        }else if(regionSeleccionada.equals("Region 2")){
                    response.getWriter().print("<select>"
                    + "<option>Ciudad 4 </option>"
                    + "<option>Ciudad 5 </option>"
                    + "<option>Ciudad 6 </option>"
                    + "<option>Ciudad 7 </option>"
                    + "</select>");
        }else if(regionSeleccionada.equals("Region 3")){
                        response.getWriter().print("<select>"
                    + "<option>Ciudad 8 </option>"
                    + "</select>"); 
        }
        
        
        
        
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
