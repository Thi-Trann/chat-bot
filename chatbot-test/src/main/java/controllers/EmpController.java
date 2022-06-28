/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.OrderHeader;
import entities.Product;
import entities.Staff;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sessionbean.AccountFacade;
import sessionbean.OrderDetailFacade;
import sessionbean.OrderHeaderFacade;
import sessionbean.ProductFacade;
import sessionbean.StaffFacade;

/**
 *
 * @author PHT
 */
@WebServlet(name = "EmpController", urlPatterns = {"/emp"})
public class EmpController extends HttpServlet {

    @EJB
    private OrderDetailFacade of;

    @EJB
    private OrderHeaderFacade ohf;

    @EJB
    private AccountFacade af;

    @EJB
    private StaffFacade sf;

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
            case "checkbill":
                checkbill(request, response);
                break;
            case "update":
                update(request, response);
                break;
            default:
                request.setAttribute("controller", "error");
                request.setAttribute("action", "index");
        }
        request.getRequestDispatcher(App.LAYOUT2).forward(request, response);
    }

    private void index(HttpServletRequest request, HttpServletResponse response) {
        List<Staff> list = sf.findAll();

        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("iduser");

        for (Staff st : list) {
            if (id == st.getId()) {
                request.setAttribute("name", st.getAccount().getName());
                request.setAttribute("email", st.getAccount().getEmail());
                request.setAttribute("phone", st.getAccount().getPhone());
                request.setAttribute("addr", st.getAccount().getAddress());
                request.setAttribute("salary", st.getSalary());
            }
        }

    }

    private void checkbill(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        List<Staff> list = sf.findAll();
        List<OrderHeader> list2 = ohf.findAll();
        List<OrderHeader> ohnew = new ArrayList();
        int id = (int) session.getAttribute("iduser");
        for (int i = 0; i < list2.size(); i++) {
            if (list2.get(i).getStatus().equals("new")) {
                ohnew.add(list2.get(i));
            }
        }

        request.setAttribute("ohnew", ohnew);

        request.setAttribute("abc", "abc");
        request.setAttribute("controller", "emp");
        request.setAttribute("action", "checkbill");

    }
    
     private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            String stt = request.getParameter("stt");
            stt = "new";
             HttpSession session = request.getSession();
            
            int idstaff = (int) session.getAttribute("iduser");
            OrderHeader odhh = new OrderHeader();
         List<OrderHeader> list = ohf.findAll();

         for (int i = 0; i < list.size(); i++) {
             if (list.get(i).getOrderId() == id) {
                odhh = new OrderHeader(list.get(i).getId(), list.get(i).getDate(), stt, list.get(i).getCustomerId(),idstaff, list.get(i).getShipToAddress());
             }
         }
               ohf.edit(odhh);
               
             
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
