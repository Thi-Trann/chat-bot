/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Account;
import java.io.IOException;
import java.io.PrintWriter;
import static java.util.Collections.list;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sesionbean.AccountFacade;

/**
 *
 * @author quckh
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {

    @EJB
    private AccountFacade as;

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
        String action = request.getAttribute("action").toString();
        switch (action) {
            case "index":
                index(request, response);
                break;
            case "register":
                register(request, response);
                break;
            default:
                request.setAttribute("controller", "error");
                request.setAttribute("action", "index");
        }
        request.getRequestDispatcher(App.LAYOUT).forward(request, response);
    }

    private void index(HttpServletRequest request, HttpServletResponse response) {

        request.setAttribute("controller", "register");
        request.setAttribute("action", "index");
    }

    private void register(HttpServletRequest request, HttpServletResponse response) {
        boolean flag = false;
        List<Account> list = as.findAll();
        request.setAttribute("list", list);
        String name = request.getParameter("name");
        String uname = request.getParameter("uName");
        String pw = request.getParameter("password");
        String rpw = request.getParameter("vpassword");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        int id = list.size() + 1;
        String address = "Tp.HCM";
        String role = "CUSTOMER";
        for (Account account : list) {
            if (uname.equals(account.getUserName())) {
                request.setAttribute("messuname", "User name was exist !!!");
                request.setAttribute("controller", "register");
                request.setAttribute("action", "index");
                flag = true;
            }
        }
        if (!(pw.equals(rpw) == true)) {
            request.setAttribute("messpass", "Wrong password verification !!!");
            request.setAttribute("controller", "register");
            request.setAttribute("action", "index");
            flag = true;
        }
        if (!flag) {
            Account a = new Account(id, name, address, phone, email, gender, uname, pw, true, role);
            as.create(a);
        }

        request.setAttribute("controller", "register");
        request.setAttribute("action", "index");

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
