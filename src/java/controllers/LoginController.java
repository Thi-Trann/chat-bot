/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.loginDAO;
import entities.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author quckh
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

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
            case "login":
                break;
            case "login_handler":
                login_handler(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            case "forget":
                forget(request, response);
                break;
            default:
                request.setAttribute("controller", "error");
                request.setAttribute("action", "index");
        }
        request.getRequestDispatcher(App.LAYOUT).forward(request, response);
    }

    private void forget(HttpServletRequest request, HttpServletResponse response) {

    }

    private void logout(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.invalidate();
        request.setAttribute("controller", "home");
        request.setAttribute("action", "index");
    }

    private void login_handler(HttpServletRequest request, HttpServletResponse response) {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        loginDAO dao = new loginDAO();
        Account a = dao.checkLogin(userName, password);
        if (a == null) {
            request.setAttribute("controller", "login");
            request.setAttribute("action", "login");
            request.setAttribute("mess", "Wrong user name or password !");
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("login_success", a);
            session.setAttribute("userName", userName);
            // add cookies
            Cookie u = new Cookie("userNameC", userName);
            Cookie p = new Cookie("passwordC", password);
            // set thoi gian ton tai cua cookies
            u.setMaxAge(60 * 60 * 24);
            p.setMaxAge(60 * 60 * 24);
            //luu cookie len client
            response.addCookie(u);
            response.addCookie(p);
            request.setAttribute("controller", "home");
            request.setAttribute("action", "index");
        }
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
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        loginDAO dao = new loginDAO();
        Account a = dao.checkLogin(userName, password);
        if (a == null) {
            request.setAttribute("controller", "login");
            request.setAttribute("action", "login");
        } else {
            HttpSession session = request.getSession();
            request.setAttribute("controller", "home");
            request.setAttribute("action", "index");
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
