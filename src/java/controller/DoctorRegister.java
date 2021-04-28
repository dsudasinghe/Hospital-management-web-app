/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DBCon;

/**
 *
 * @author User
 */
public class DoctorRegister extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         DBCon con =new DBCon();
        
        String docfirstname = request.getParameter("docfirstname"),
               doclastname = request.getParameter("doclastname"), 
               doc_nic = request.getParameter("doc_nic"),
               password = request.getParameter("password"),
               specialization = request.getParameter("specialization"), 
               availabledays = request.getParameter("availabledays"),
               availabletimes = request.getParameter("availabletimes"),
               gender = request.getParameter("gender"), 
               aboutme = request.getParameter("aboutme");
        String epassword =Encrypt.Md5encryption(password);
        if(con.registerDoctor( docfirstname, doclastname, doc_nic, epassword, specialization, availabledays, availabletimes, gender, aboutme)){
            
            RequestDispatcher req = request.getRequestDispatcher("DoctorLogin.html");
            req.include(request, response);
        }
        else{
            
            RequestDispatcher req = request.getRequestDispatcher("loginError.html");
            req.include(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
