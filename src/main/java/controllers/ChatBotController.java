/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Chatbot;
import entities.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sessionbean.ChatbotFacade;
import sessionbean.ProductFacade;

/**
 *
 * @author SE151515 Cao Trong Hieu
 */
@WebServlet(name = "ChatBotController", urlPatterns = {"/chatbot"})
public class ChatBotController extends HttpServlet {

    @EJB
    private ChatbotFacade cf;

    @EJB
    private ProductFacade pf;

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
        PrintWriter out = response.getWriter();
        String uInput = request.getParameter("uInput");
        int id;
        boolean flag = true;
        List<Product> list = pf.findAll();
        List<Chatbot> listChatbot = cf.findAll();
     
        for(int i =0;i<listChatbot.size();i++){
            if(uInput.toLowerCase().equals(listChatbot.get(i).getKeyword())){
                out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">"+listChatbot.get(i).getContent()+"</span>\n");
                flag = false;
            }
        }
        if(flag){
            out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">I can't understand</span>\n");
        }
//        for(Chatbot bot:listChatbot){
//            if(uInput.toLowerCase().equalsIgnoreCase(bot.getKeyword())){
//                out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">"+bot.getContent()+"</span>\n");
//
//            }
//        }
//        for (Product p : list) {
//            if (uInput.toLowerCase().equals(p.getName().toLowerCase())) {
//                out.println(
//                        "<form method =\"post\" action=\"/chatbot-test/product/detail.do\">"
//                        + "<button style=\"background: white;color : black;\" type=\"submit\">"
//                        + " <input type=\"hidden\" value=\"" + p.getId() + "\" name=\"id\"/>"
//                        + "<img  src=\"/chatbot-test/images/products/" + p.getId() + ".jpg\" width=\"50%\" />"
//                        + "Discount:" + p.getDiscount() * 100 + "%" + "<br/>\n"
//                        + "Price: <strike>" + p.getPrice() + "$" + "</strike>\n"
//                        + "<span style=\"color:red;font-size:20px;\">\n"
//                        + (p.getPrice() * (1 - p.getDiscount())) + "$"
//                        + "</span><br/>"
//                        + " </button>\n"
//                        + " <input name='quantity' type='hidden' value='1' />"
//                        + " <button formaction=\"/chatbot-test/cart/add_chatbot.do\" style=\"border-radius: 4px;background: #212529;color: #fff;padding: 7px 27px;margin-left:80px;display: inline-block;margin-top: 20px;border: solid 2px #212529;transition: all 0.5s ease-in-out 0s;\" type=\"submit\" class=\"round-black-btn\">Add to Cart</button>"
//                        + "</form>");
//                out.println("<button type=\"submit\" class=\"chat-round-black-btn\">Add to Cart</button>");
//
//                flag = false;
//            }
//        }
//
//        if (flag) {
//            if (uInput.toLowerCase().equals("hi")) {
//                out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">Hello</span>\n");
//            } else if (uInput.toLowerCase().contains("search")) {
//                out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">Enter product's name for searching:</span>\n");
//
//            } else {
//                out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">I can't understand</span>\n");
//            }
//
//        }
    

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
