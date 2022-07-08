/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Chat;
import entities.Chatbot;
import entities.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

    List<Chat> chatSession = new ArrayList<>();

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
        List<Product> listProduct = pf.findAll();
        List<Chatbot> listChatbot = cf.findAll();

        String uInput;
        String botMsg;
        Chat chat;
        HttpSession session = request.getSession();
        boolean flag = false;
        int DupChatCount = 0;
        uInput = request.getParameter("uInput");
        for (Chatbot c : listChatbot) {
            if (uInput.toLowerCase().equals(c.getKeyword())) {
                botMsg = (String) c.getContent();
                chat = new Chat(uInput, botMsg);
                chatSession.add(chat);
                session.setAttribute("CHAT_SESSION", chatSession);
                out.println("<div class=\"incoming-msg\"> <span class=\"bot-msg\">" + chat.getBotMsg() + "</span></div>\n");
                flag = true;
                break;
            } else if (uInput.equals("end")) {
                out.println("<div class=\"incoming-msg\"> <span class=\"bot-msg\">See you later!</span></div>\n");
                session.invalidate();
                return;
            } else {
                String InitUInput = uInput;
                DupChatCount = 0;
                for (Product p : listProduct) {
                    if(DupChatCount > 0){
                        uInput = "";
                    }
                    if (p.getName().toLowerCase().contains(InitUInput.toLowerCase())) {
                        NumberFormat formatter = new DecimalFormat("$#,##0.00");
                        double finalPrice = p.getPrice() * (1 - p.getDiscount());
                        botMsg = p.getId() + "-" + p.getDiscount() + "-" + p.getPrice() + "-" + p.getDiscount() * 100 + "-" + finalPrice;
                        DupChatCount++;
                        chat = new Chat(uInput, botMsg);
                        chatSession.add(chat);
                        session.setAttribute("CHAT_SESSION", chatSession);
                        out.println(
                                "<div class =\"incoming-msg\"> "
                                + "<span class =\"bot-msg\">"
                                + "<form method =\"post\" action=\"/chatbot-test/product/detail.do\">"
                                + "<button style=\"background: white;color : black;border-radius: 5px;\" type=\"submit\">"
                                + " <input type=\"hidden\" value=\"" + p.getId() + "\" name=\"id\"/>"
                                + "<img  src=\"/chatbot-test/images/products/" + p.getId() + ".jpg\" width=\"50%\" /><br/>"
                                + "Discount:" + p.getDiscount() * 100 + "%" + "<br/>\n"
                                + "Price: <strike> " + formatter.format(p.getPrice()) + "</strike></br>"
                                + "<span style=\"color:red;font-size:20px;\">\n"
                                + formatter.format(finalPrice)
                                + "</span><br/>"
                                + " </button>\n"
                                + " <input name='quantity' type='hidden' value='1' />"
                                + " <button formaction=\"/chatbot-test/cart/add_chatbot.do\" style=\"border-radius: 5px;background: #212529;color: #fff;margin: 10px 5px 0 7px;font-size: 15px;padding: 2px 27px;border: solid 2px #212529;transition: all 0.5s ease-in-out 0s;\" type=\"submit\" class=\"round-black-btn\">Add to Cart</button>"
                                + "</span></form></div>");
                        flag = true;                        
                    }
                }
                if (flag == true) {
                    break;
                }
            }
        }
        if (flag == false) {
            botMsg = "I don't understand";
            chat = new Chat(uInput, botMsg);
            chatSession.add(chat);
            session.setAttribute("CHAT_SESSION", chatSession);
            out.println("<div class=\"incoming-msg\"> <span class=\"bot-msg\">" + chat.getBotMsg() + "</span></div>\n");
        }
    }

//        for (Product p : list) {
//            if (uInput.toLowerCase().equals(p.getName().toLowerCase())) {
//                out.println(
//                        "<form method =\"post\" action=\"/chatbot-test/product/detail.do\">"
//                        + "<button style=\"background: white;color : black;\" type=\"submit\">"
//                        + " <input type=\"hidden\" value=\"" + p.getId() + "\" name=\"id\"/>"
//                        +"<img  src=\"/chatbot-test/images/products/" + p.getId() + ".jpg\" width=\"50%\" />"                        
//                        + "Discount:" + p.getDiscount() * 100 + "%" + "<br/>\n"
//                        + "Price: <strike>" + p.getPrice() + "$" + "</strike>\n"
//                        + "<span style=\"color:red;font-size:20px;\">\n"
//                        + (p.getPrice() * (1 - p.getDiscount())) + "$"
//                        + "</span><br/>"
//                        + " </button>\n"
//                        +" <input name='quantity' type='hidden' value='1' />"
//                        + " <button formaction=\"/chatbot-test/cart/add_chatbot.do\" style=\"border-radius: 4px;background: #212529;color: #fff;padding: 7px 27px;margin-left:80px;display: inline-block;margin-top: 20px;border: solid 2px #212529;transition: all 0.5s ease-in-out 0s;\" type=\"submit\" class=\"round-black-btn\">Add to Cart</button>"
//                        + "</form>");
//                flag = false;
//            }
//        }
//        if (flag == true) {
//            if (uInput.toLowerCase().equals("hi")) {
//                out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">Hello</span>\n");
//            } else if (uInput.toLowerCase().contains("search")) {
//                out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">Enter product's name for searching:</span>\n");
//
//            } else {
//                out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">I can't understand</span>\n");
//            }
//        }
    //            case 2:
    //                String inputTxt = request.getParameter("inputTxt");
    //                List<Product> list = pf.findAll();
    //                for (Product p : list) {
    //                    if (inputTxt.toLowerCase().contains(p.getName().toLowerCase())) {
    //                        out.println("<div class=\"img_scale\" ><img src=\"${root}/images/products/" + p.getId() + ".jpg\" width=\"10%\" /></div>");
    //                    } else {
    //                        out.println("<span style=\"background-color: #0084FF;color: white;\" class=\"bot-msg\">Product is not existed !</span>\n");
    //                    }
    //                }
    //                break;
//    }
//        out.println("<button type=\"submit\" class=\"chat-round-black-btn\">Add to Cart</button>");
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
