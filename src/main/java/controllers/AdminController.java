/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Account;
import entities.OrderHeader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sessionbean.AccountFacade;
import sessionbean.OrderHeaderFacade;


/**
 *
 * @author quckh
 */
@WebServlet(name = "AdminController", urlPatterns = {"/admin"})
public class AdminController extends HttpServlet {

    @EJB
    private OrderHeaderFacade ohf;

    @EJB
    private AccountFacade af;
    
    

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
            case "manageEmployees":
                manageEmployees(request, response);
                break;
            case "manageCustomers":
                manageCustomers(request, response);
                break;
            case "manageProducts":
                manageProducts(request, response);
                break;
            case "manageOrders":
                manageOrders(request, response);
                break;
            case "generateNewEmployee":
                generateNewEmployee(request, response);
                break;
            case "generateNewEmployee_handler":
                generateNewEmployee_handler(request, response);
                break;
            case "updateEmployee":
                updateEmployee(request, response);
                break;
            case "updateEmployee_handler":
                updateEmployee_handler(request, response);
                break;
            case "deleteEmployee":
                deleteEmployee(request, response);
                break;
            default:
                request.setAttribute("controller", "error");
                request.setAttribute("action", "index");
        }
        request.getRequestDispatcher(App.LAYOUT).forward(request, response);
    }

    private void manageEmployees(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");

        String role = "EMPLOYEE";
        List<Account> elist = new ArrayList<>();
        List<Account> list = af.findAll();
        for (Account acc : list) {
            if (acc.getRole().equals(role)) {
                elist.add(acc);
            }
        }
        request.setAttribute("elist", elist);
    }

    private void manageCustomers(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");

        String role = "CUSTOMER";
        List<Account> clist = new ArrayList<>();
        List<Account> list = af.findAll();
        for (Account acc : list) {
            if (acc.getRole().equals(role)) {
                clist.add(acc);
            }
        }
        request.setAttribute("clist", clist);
    }

    private void generateNewEmployee(HttpServletRequest request, HttpServletResponse response) {

    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        List<Account> list = af.findAll();
        for (Account acc : list) {
            if (acc.getId().equals(id)) {
                af.remove(acc);
            }
        }
        manageEmployees(request, response);
        request.setAttribute("controller", "admin");
        request.setAttribute("action", "manageEmployees");
    }

    private void generateNewEmployee_handler(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");

        boolean flag = false;
        List<Account> list = af.findAll();
        request.setAttribute("list", list);
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String uname = request.getParameter("uName");
        String pw = request.getParameter("password");
        String rpw = request.getParameter("vpassword");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        int id = list.size() + 1;
        String role = "EMPLOYEE";
        List<Account> rlist = new ArrayList<>();

        for (Account account : list) {
            if (uname.equals(account.getUserName())) {
                request.setAttribute("messuname", "User name already existed !!!");
                request.setAttribute("controller", "admin");
                request.setAttribute("action", "generateNewEmployee");
                flag = true;
            }
        }
        if (!(pw.equals(rpw) == true)) {
            request.setAttribute("messpass", "Wrong password verification !!!");
            request.setAttribute("controller", "admin");
            request.setAttribute("action", "generateNewEmployee");
            flag = true;
        }
        for (Account account : list) {
            if (email.equals(account.getEmail())) {
                request.setAttribute("messmail", "Email already existed !!!");
                request.setAttribute("controller", "admin");
                request.setAttribute("action", "generateNewEmployee");
                flag = true;
            }
        }

        if (!flag) {
            Account a = new Account(id, name, address, phone, email, gender, uname, pw, true, role);
            af.create(a);
            manageEmployees(request, response);
            request.setAttribute("controller", "admin");
            request.setAttribute("action", "manageEmployees");
        }
    }

    private void manageProducts(HttpServletRequest request, HttpServletResponse response) {

    }

    private void manageOrders(HttpServletRequest request, HttpServletResponse response) {
        List<OrderHeader> list = ohf.findAll();
        List<OrderHeader> olist = new ArrayList<>();
        for(OrderHeader oh : list){
            oh = new OrderHeader(oh.getOrderId(), oh.getDate(), oh.getStatus(), oh.getCustomerId(), oh.getStaffId(), oh.getShipToAddress());
            olist.add(oh);
        }
        request.setAttribute("olist", olist);
    }

    private void updateEmployee(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");

        int id = Integer.parseInt(request.getParameter("id"));
        List<Account> list = af.findAll();
        List elist = new ArrayList();
        for (Account acc : list) {
            if (acc.getId().equals(id)) {
                elist.add(acc);

                request.setAttribute("elist", elist);
            }
        }
    }

    private void updateEmployee_handler(HttpServletRequest request, HttpServletResponse response) {
        boolean flag = false;
        int id = Integer.parseInt(request.getParameter("id"));
        List<Account> list = af.findAll();
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        int length = address.length();
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String vPassword = request.getParameter("vPassword");
        String role = "EMPLOYEE";

        Account acc = new Account(id, name, address, phoneNumber, email, gender, userName, password, true, role);
        af.edit(acc);
        manageEmployees(request, response);
        request.setAttribute("controller", "admin");
        request.setAttribute("action", "manageEmployees");
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
